function v --description 'Shows versions for commonly installed items'
    function _v_semver_version
        set -l string $argv[1]
        set -l semver (string match -r "\d+\.\d+\.\d+" $string)
        echo $semver
    end

    function _v_now_ms
        perl -MTime::HiRes=time -e 'printf "%.0f", time*1000'
    end

    function _v_version_entry
        set -l cmd $argv[1]
        set -l arg $argv[2]
        set -l color $argv[3]

        set_color "$color"
        set -l path (type -p $cmd)
        if test -n "$path"
            set -l t0 (_v_now_ms)
            set -l ver (eval $cmd $arg)
            set -l dur (math "$(_v_now_ms) - $t0")
            set -l semver (_v_semver_version $ver)
            printf "%-8s %-10s %6sms  %s\n" $cmd $semver $dur $path
        end
    end

    set -l total (_v_now_ms)

    _v_version_entry fish --version blue
    _v_version_entry node -v green
    _v_version_entry npm -v red
    _v_version_entry npx -v red
    _v_version_entry pnpm -v yellow
    _v_version_entry yarn -v magenta
    _v_version_entry deno --version white
    _v_version_entry go version cyan
    _v_version_entry python --version blue
    _v_version_entry python3 --version blue
    _v_version_entry ruby -v red

    set -l total_dur (math "$(_v_now_ms) - $total")

    printf "\n%-8s %-10s %6sms\n" Total '' "$total_dur"
end
