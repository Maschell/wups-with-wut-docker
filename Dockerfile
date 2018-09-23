FROM wups/core:latest

MAINTAINER Maschell <maschell@gmx.de>

RUN apt-get update && \
	apt-get install -y --no-install-recommends cmake --fix-missing

ENV WUT_ROOT=${DEVKITPRO}/wut
	
COPY --from=wiiuwut/core:1.0.0-beta4 $WUT_ROOT $WUT_ROOT