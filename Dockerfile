FROM python:3.11

USER root

RUN pip install \
  Sphinx==2.4.4 \
  sphinxcontrib-confluencebuilder \
  recommonmark \
  m2r2
  myst-parser

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
