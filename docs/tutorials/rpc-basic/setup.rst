Requirements and Setup
======================

Quark currently supports one interaction pattern with the most basic request-response interaction where the client sends a single request and the server replies with a single response. This tutorial will show you how to define a simple contract using that pattern, generate clients in each supported language, and generate server stubs in each supported language. It will also walk you through writing the actual server code for one language then how to package everything together into a working end-to-end example that sends simple requests from clients with direct responses to those requests from a server.

In order to use RPC with Quark you must have Quark installed, the Quark core runtime for the desired language or languages, and the Quark integration module installed matching the development environment you're using to write your code.

This tutorial will use clients in Java, Javascript, and Python and a server in XXX. We expect you to have the following tools installed as prerequisites:

* 


If you haven't already done so, run the following commands to install Quark, the Quark core runtime component for each language, and integrations needed to follow along with this tutorial:

1. pip install datawire-quark