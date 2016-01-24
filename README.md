# gnu

This repository contains a simple implementation of the GAP SCSCP 
server providing Gnu(n) - the number of groups of order n. It is
meant to be an example demonstrating how a remote procedure call 
protocol, called SCSCP, may be used to provide mathematical services
to clients representing computer algebra systems and other software.

This version uses Cubefree package for cubefree orders, otherwise
it delegates to NrSmallGroups. The latter is enhanced by SglPPow 
package which extends NrSmallGroups for groups of order p^7 for 
p>11 and for groups of order 3^8.

This is work in progress. Latter you will find here details of:
* setting up your own server
* connecting to the demo server
* using Gnu(n) locally

