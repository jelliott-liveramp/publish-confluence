FROM python:3.11

USER root

RUN pip install \
  Sphinx==8.2.0 \
  sphinxcontrib-confluencebuilder \
  myst-parser

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
