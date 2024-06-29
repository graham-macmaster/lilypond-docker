FROM debian

ENV VERSION=2.24.3

ADD https://gitlab.com/lilypond/lilypond/-/releases/v${VERSION}/downloads/lilypond-${VERSION}-linux-x86_64.tar.gz ./

RUN tar xf ./lilypond-${VERSION}-linux-x86_64.tar.gz && rm ./lilypond-${VERSION}-linux-x86_64.tar.gz

ENV PATH /lilypond-${VERSION}/bin:$PATH
