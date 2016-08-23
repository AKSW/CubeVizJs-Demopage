# Docker for CubeVizJS Demo

Contains the CubeVizJS Demo Site [cubevizjs.demo.aksw.org](http://cubevizjs.demo.aksw.org/).

## Build

docker build -t cubevizjs.demo.aksw .

## Run

docker run -d --name cubevizjs.demo.aksw -p 80:80 cubevizjs.demo.aksw

## Requirements

A running Virtuoso instance on http://localhost:8890 with enabled CORS (Cross-Origin Resource Sharing)

To enable CORS, log into Conductor (http://localhost:8890/conductor/) and goto:

    -> Web Application Server 
     -> Virtual Domains & Directories 
     -> click on first folder-symbol (before the '0.0.0.0')
     -> 'Edit' row '/sparql' 
     -> set field value 'Cross-Origin Resource Sharing' to: "*" (without ")

and save changes.

### Import Data

To enable a default data cube for the demo page import some data to Virtuoso. This can be done with Conductor:

    -> Linked Data -> Quad Store Upload

with any valid RDF data cube. A sample cube can be found at [github.com/AKSW/cubeviz.ontowiki/blob/master/assets/scoreboard-part-2-dimensional.ttl](https://github.com/AKSW/cubeviz.ontowiki/blob/master/assets/scoreboard-part-2-dimensional.ttl).