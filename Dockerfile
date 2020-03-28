ARG ANDROID_VERSION="28"

FROM cirrusci/android-sdk:${ANDROID_VERSION}

ARG FLUTTER_VERSION="v1.12.13+hotfix.8"

ENV FLUTTER_HOME=${HOME}/sdks/flutter \
    FLUTTER_ROOT=$FLUTTER_HOME

ENV PATH ${PATH}:${FLUTTER_HOME}/bin:${FLUTTER_HOME}/bin/cache/dart-sdk/bin

RUN git clone --branch ${FLUTTER_VERSION} https://github.com/flutter/flutter.git ${FLUTTER_HOME} && \
    flutter doctor
