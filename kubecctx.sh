#!/usr/bin/env bash

# The MIT License (MIT)
#
# Copyright (c) 2020 John Dewey
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

kubecctx() {
	KUBE_CONTEXT_DEFAULT_FILE=config.yml
	KUBE_CONTEXTS_DIR=~/.kube/contexts
	KUBE_CONTEXTS=$(/bin/ls -d ${KUBE_CONTEXTS_DIR}/* | xargs -n 1 basename)
	KUBE_CONTEXT_CURRENT_CONTEXT=$(echo "${KUBE_CONTEXTS}")
	KUBE_CONTEXT_CURRENT_CONTEXT=$(echo "${KUBE_CONTEXTS}" | fzf)

	export KUBECONFIG="${KUBE_CONTEXTS_DIR}/${KUBE_CONTEXT_CURRENT_CONTEXT}/${KUBE_CONTEXT_DEFAULT_FILE}"
	echo "Switched to KUBECONFIG '${KUBECONFIG}'."
}
