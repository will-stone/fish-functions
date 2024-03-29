function v --description 'Shows versions for commonly installed items'
    function _v_semver_version
        set -l string $argv[1]
        set -l semver (string match -r "\d+\.\d+\.\d+" $string)
        echo $semver
    end

    function _v_version_entry
        set -l cmd $argv[1]
        set -l arg $argv[2]

        if type -q $cmd
            set -l ver (eval $cmd $arg)
            set -l semver (_v_semver_version $ver)
            printf "$cmd\t$semver\n"
        end
    end

    set_color green
    _v_version_entry node -v

    set_color red
    _v_version_entry npm -v

    set_color red
    _v_version_entry npx -v

    set_color blue
    _v_version_entry yarn -v

    set_color white
    _v_version_entry deno --version

    set_color cyan
    _v_version_entry go version

    set_color red
    _v_version_entry ruby -v

    set_color blue
    _v_version_entry fish --version
end
