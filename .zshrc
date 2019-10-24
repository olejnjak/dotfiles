export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export FASTLANE_SKIP_UPDATE_CHECK=1

export DELIVER_USERNAME='jakub.olejnik@ackee.cz'
export PILOT_USERNAME="$DELIVER_USERNAME"

alias be='bundle exec'
alias bef='bundle exec fastlane'
alias bepi='bundle exec pod install'
alias bepu='bundle exec pod update'

alias cb='carthage bootstrap --platform iOS --cache-builds'
alias cbuild='carthage build --platform iOS --cache-builds'
alias cu='carthage update --platform iOS --cache-builds'

alias cycles='system_profiler SPPowerDataType | grep "Cycle Count"'

alias frd='bundle exec fastlane rome_download'
alias frlm='bundle exec fastlane rome_missing'
alias fru='bundle exec fastlane rome_upload'

alias pi='pod install'
alias pu='pod update'

export ROME_PREFIX="Swift-`xcrun swift -version | cut -f4 -d\" \"`"
export USER_ROME_PREFIX="${USER}_${ROME_PREFIX}"

alias rd='rome download --platform iOS --cache-prefix "$USER_ROME_PREFIX"'
alias rlm='rome list --missing --platform iOS --cache-prefix "$USER_ROME_PREFIX"'
alias ru='rome upload --platform iOS --cache-prefix "$USER_ROME_PREFIX"'

alias rd_global='rome download --platform iOS --cache-prefix "$ROME_PREFIX"'
alias rlm_global='rome list --missing --platform iOS --cache-prefix "$ROME_PREFIX"'
alias ru_global='rome upload --platform iOS --cache-prefix "$ROME_PREFIX"'

alias spm='swift package'
alias spm_release='swift build --static-swift-stdlib --configuration release'
