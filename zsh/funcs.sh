#!/bin/sh

set_proxy() {
	proxy_server="http://127.0.0.1:1080"
	export http_proxy=$proxy_server
	export https_proxy=$proxy_server
	export all_proxy=$proxy_server
	export ALL_PROXY=$proxy_server
}

unset_proxy() {
	unset http_proxy
	unset https_proxy
	unset all_proxy
	unset ALL_PROXY
}
