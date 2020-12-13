#!/usr/bin/env ruby

require 'httpclient'
require 'json'
require 'slack/incoming/webhooks'


def _postSlack(diffmsg) 
  webhook = 'https://hooks.slack.com/services/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'
  slackname = 'HeightDiffCheck'

  slack = Slack::Incoming::Webhooks.new webhook, username: slackname 
  slack.post diffmsg
end 

def _getExpHeight()
  explorer_url = 'https://blockchain.info/latestblock'
  cli = HTTPClient.new()
  res = cli.get(explorer_url)
  #res.status = 401

  if res.status != 200 then
    #puts res.status
    return nil
  end

  data = JSON.parse(res.body)
  return data["height"]
end

def _getBitdHeight()
  bitcoind_url = ''
  user = ''
  password = ''

  cli = HTTPClient.new()
  json = '{"jsonrpc":"1.0","id":"","method":"getblockcount","params":[]}'
  cli.set_auth(bitcoind_url, user, password)
  res = cli.post_content(bitcoind_url, json, 'Content-Type' => 'text/plain')
  data = JSON.parse(res)
  return data["result"]
end

def _checkDiff(expHeight, bitdHeight)
  if (expHeight - bitdHeight).abs >= 3 then
    msg = "ERROR: More than 3 block difference " + " Explorer:" + expHeight.to_s + " bitcoind:" + bitdHeight.to_s
    return msg 
  end
end

def _chkHeight(expHeight, bitdHeight)
  if expHeight && bitdHeight != nil then
    _postSlack(_checkDiff(expHeight, bitdHeight))
  elsif bitdHeight.to_i == 0  then
    _postSlack("ERROR: Can not get block Height from bitcoind")
  else
    _postSlack("ERROR: Can not get block Height from explorer")
  end
end

expHeight = _getExpHeight()
bitdHeight = _getBitdHeight()

_chkHeight(expHeight, bitdHeight)

