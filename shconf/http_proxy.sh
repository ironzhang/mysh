#!/bin/sh

http_proxy_enable() {
	IP="http://127.0.0.1:8118"
	export http_proxy=$IP
	export https_proxy=$IP
	export all_proxy=$IP
}

http_proxy_disable() {
	unset http_proxy
	unset https_proxy
	unset all_proxy
}
