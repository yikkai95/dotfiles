#compdef aptos

autoload -U is-at-least

_aptos() {
    typeset -A opt_args
    typeset -a _arguments_options
    local ret=1

    if is-at-least 5.2; then
        _arguments_options=(-s -S -C)
    else
        _arguments_options=(-s -C)
    fi

    local context curcontext="$curcontext" state line
    _arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
":: :_aptos_commands" \
"*::: :->aptos" \
&& ret=0
    case $state in
    (aptos)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:aptos-command-$line[1]:"
        case $line[1] in
            (account)
_arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
":: :_aptos__account_commands" \
"*::: :->account" \
&& ret=0

    case $state in
    (account)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:aptos-account-command-$line[1]:"
        case $line[1] in
            (create)
_arguments "${_arguments_options[@]}" \
'--account=[Address of the new account]:ACCOUNT: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(create-resource-account)
_arguments "${_arguments_options[@]}" \
'--seed=[Resource account seed]:SEED: ' \
'--authentication-key=[Optional Resource Account authentication key]:AUTHENTICATION_KEY: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(fund-with-faucet)
_arguments "${_arguments_options[@]}" \
'--account=[Address to fund]:ACCOUNT: ' \
'--amount=[Coins to fund when using the faucet]:AMOUNT: ' \
'--faucet-url=[URL for the faucet endpoint e.g. https://faucet.devnet.aptoslabs.com]:FAUCET_URL: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" \
'--account=[Address of the account you want to list resources/modules for]:ACCOUNT: ' \
'--query=[Type of items to list: \[balance, resources, modules\]]:QUERY: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(lookup-address)
_arguments "${_arguments_options[@]}" \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--public-key-file=[Public key input file name]:PUBLIC_KEY_FILE: ' \
'--public-key=[Public key encoded in a type as shown in `encoding`]:PUBLIC_KEY: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(rotate-key)
_arguments "${_arguments_options[@]}" \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--new-private-key-file=[File name that contains the new private key]:NEW_PRIVATE_KEY_FILE: ' \
'--new-private-key=[New private key encoded in a type as shown in `encoding`]:NEW_PRIVATE_KEY: ' \
'--save-to-profile=[Name of the profile to save the new private key]:SAVE_TO_PROFILE: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'--skip-saving-profile[Skip saving profile]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(transfer)
_arguments "${_arguments_options[@]}" \
'--account=[Address of account you want to send APT coins to]:ACCOUNT: ' \
'--amount=[Amount of Octas (10^-8 APT) to transfer]:AMOUNT: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'*::subcommand -- The subcommand whose help message to display:' \
&& ret=0
;;
        esac
    ;;
esac
;;
(config)
_arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
":: :_aptos__config_commands" \
"*::: :->config" \
&& ret=0

    case $state in
    (config)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:aptos-config-command-$line[1]:"
        case $line[1] in
            (init)
_arguments "${_arguments_options[@]}" \
'--rest-url=[URL to a fullnode on the network]:REST_URL: ' \
'--faucet-url=[URL for the Faucet endpoint]:FAUCET_URL: ' \
'--random-seed=[The seed used for key generation, should be a 64 character hex string and only used for testing]:RANDOM_SEED: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--skip-faucet[Whether to skip the faucet for a non-faucet endpoint]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(generate-shell-completions)
_arguments "${_arguments_options[@]}" \
'--shell=[Shell to generate completions for one of \[bash, elvish, powershell, zsh\]]:SHELL: ' \
'--output-file=[File to output shell completions to]:OUTPUT_FILE: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(set-global-config)
_arguments "${_arguments_options[@]}" \
'--config-type=[A configuration for where to place and use the config]:CONFIG_TYPE: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(show-global-config)
_arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(show-profiles)
_arguments "${_arguments_options[@]}" \
'--profile=[If provided, show only this profile]:PROFILE: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'*::subcommand -- The subcommand whose help message to display:' \
&& ret=0
;;
        esac
    ;;
esac
;;
(genesis)
_arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
":: :_aptos__genesis_commands" \
"*::: :->genesis" \
&& ret=0

    case $state in
    (genesis)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:aptos-genesis-command-$line[1]:"
        case $line[1] in
            (generate-genesis)
_arguments "${_arguments_options[@]}" \
'--output-dir=[Output directory for Genesis file and waypoint]:OUTPUT_DIR: ' \
'--github-repository=[Github repository e.g. '\''aptos-labs/aptos-core'\'']:GITHUB_REPOSITORY: ' \
'--github-branch=[Github repository branch e.g. main]:GITHUB_BRANCH: ' \
'--github-token-file=[Path to Github API token.  Token must have repo:* permissions]:GITHUB_TOKEN_FILE: ' \
'--local-repository-dir=[Path to local git repository]:LOCAL_REPOSITORY_DIR: ' \
'--mainnet[Whether this is mainnet genesis]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(generate-keys)
_arguments "${_arguments_options[@]}" \
'--output-dir=[Output directory for the key files]:OUTPUT_DIR: ' \
'--pool-address=[Address of the Staking pool]:POOL_ADDRESS: ' \
'--random-seed=[The seed used for key generation, should be a 64 character hex string and only used for testing]:RANDOM_SEED: ' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(generate-layout-template)
_arguments "${_arguments_options[@]}" \
'--output-file=[Path of the output layout template]:OUTPUT_FILE: ' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(generate-admin-write-set)
_arguments "${_arguments_options[@]}" \
'--output-file=[Path of the output genesis file]:OUTPUT_FILE: ' \
'--execute-as=[Address of the account which execute this script]:EXECUTE_AS: ' \
'--script-path=[Path to the Move script for the proposal]:SCRIPT_PATH: ' \
'--compiled-script-path=[Path to the Move script for the proposal]:COMPILED_SCRIPT_PATH: ' \
'--framework-git-rev=[Git revision or branch for the Aptos framework]:FRAMEWORK_GIT_REV: ' \
'--framework-local-dir=[Use a local framework directory]:FRAMEWORK_LOCAL_DIR: ' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(setup-git)
_arguments "${_arguments_options[@]}" \
'--github-repository=[Github repository e.g. '\''aptos-labs/aptos-core'\'']:GITHUB_REPOSITORY: ' \
'--github-branch=[Github repository branch e.g. main]:GITHUB_BRANCH: ' \
'--github-token-file=[Path to Github API token.  Token must have repo:* permissions]:GITHUB_TOKEN_FILE: ' \
'--local-repository-dir=[Path to local git repository]:LOCAL_REPOSITORY_DIR: ' \
'--layout-file=[Path to the `Layout` file which defines where all the files are]:LAYOUT_FILE: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(set-validator-configuration)
_arguments "${_arguments_options[@]}" \
'--username=[Name of validator]:USERNAME: ' \
'--validator-host=[Host and port pair for the validator e.g. 127.0.0.1:6180 or aptoslabs.com:6180]:VALIDATOR_HOST: ' \
'--full-node-host=[Host and port pair for the fullnode e.g. 127.0.0.1:6180 or aptoslabs.com:6180]:FULL_NODE_HOST: ' \
'--stake-amount=[Stake amount for stake distribution]:STAKE_AMOUNT: ' \
'--commission-percentage=[Commission rate to pay operator]:COMMISSION_PERCENTAGE: ' \
'--owner-public-identity-file=[Path to private identity generated from GenerateKeys]:OWNER_PUBLIC_IDENTITY_FILE: ' \
'--operator-public-identity-file=[Path to operator public identity, defaults to owner identity]:OPERATOR_PUBLIC_IDENTITY_FILE: ' \
'--voter-public-identity-file=[Path to voter public identity, defaults to owner identity]:VOTER_PUBLIC_IDENTITY_FILE: ' \
'--github-repository=[Github repository e.g. '\''aptos-labs/aptos-core'\'']:GITHUB_REPOSITORY: ' \
'--github-branch=[Github repository branch e.g. main]:GITHUB_BRANCH: ' \
'--github-token-file=[Path to Github API token.  Token must have repo:* permissions]:GITHUB_TOKEN_FILE: ' \
'--local-repository-dir=[Path to local git repository]:LOCAL_REPOSITORY_DIR: ' \
'--join-during-genesis[Whether the validator will be joining the genesis validator set]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'*::subcommand -- The subcommand whose help message to display:' \
&& ret=0
;;
        esac
    ;;
esac
;;
(governance)
_arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
":: :_aptos__governance_commands" \
"*::: :->governance" \
&& ret=0

    case $state in
    (governance)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:aptos-governance-command-$line[1]:"
        case $line[1] in
            (propose)
_arguments "${_arguments_options[@]}" \
'--metadata-url=[Location of the JSON metadata of the proposal]:METADATA_URL: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--pool-address=[Address of the Staking pool]:POOL_ADDRESS: ' \
'--script-path=[Path to the Move script for the proposal]:SCRIPT_PATH: ' \
'--compiled-script-path=[Path to the Move script for the proposal]:COMPILED_SCRIPT_PATH: ' \
'--framework-git-rev=[Git revision or branch for the Aptos framework]:FRAMEWORK_GIT_REV: ' \
'--framework-local-dir=[Use a local framework directory]:FRAMEWORK_LOCAL_DIR: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(vote)
_arguments "${_arguments_options[@]}" \
'--proposal-id=[Id of proposal to vote on]:PROPOSAL_ID: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--pool-address=[Address of the Staking pool]:POOL_ADDRESS: ' \
'--yes[Vote yes on the proposal]' \
'--no[Vote no on the proposal]' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(execute-proposal)
_arguments "${_arguments_options[@]}" \
'--proposal-id=[Proposal Id being executed]:PROPOSAL_ID: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--script-path=[Path to the Move script for the proposal]:SCRIPT_PATH: ' \
'--compiled-script-path=[Path to the Move script for the proposal]:COMPILED_SCRIPT_PATH: ' \
'--framework-git-rev=[Git revision or branch for the Aptos framework]:FRAMEWORK_GIT_REV: ' \
'--framework-local-dir=[Use a local framework directory]:FRAMEWORK_LOCAL_DIR: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(generate-upgrade-proposal)
_arguments "${_arguments_options[@]}" \
'--account=[Address of the account which the proposal addresses]:ACCOUNT: ' \
'--output=[Where to store the generated proposal]:OUTPUT: ' \
'--included-artifacts=[What artifacts to include in the package. This can be one of `none`, `sparse`, and `all`. `none` is the most compact form and does not allow to reconstruct a source package from chain; `sparse` is the minimal set of artifacts needed to reconstruct a source package; `all` includes all available artifacts. The choice of included artifacts heavily influences the size and therefore gas cost of publishing: `none` is the size of bytecode alone; `sparse` is roughly 2 times as much; and `all` 3-4 as much]:INCLUDED_ARTIFACTS: ' \
'--package-dir=[Path to a move package (the folder with a Move.toml file)]:PACKAGE_DIR: ' \
'--output-dir=[Path to save the compiled move package]:OUTPUT_DIR: ' \
'--named-addresses=[Named addresses for the move binary]:NAMED_ADDRESSES: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'*::subcommand -- The subcommand whose help message to display:' \
&& ret=0
;;
        esac
    ;;
esac
;;
(info)
_arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" \
'--rest-url=[URL to a fullnode on the network]:REST_URL: ' \
'--faucet-url=[URL for the Faucet endpoint]:FAUCET_URL: ' \
'--random-seed=[The seed used for key generation, should be a 64 character hex string and only used for testing]:RANDOM_SEED: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--skip-faucet[Whether to skip the faucet for a non-faucet endpoint]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(key)
_arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
":: :_aptos__key_commands" \
"*::: :->key" \
&& ret=0

    case $state in
    (key)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:aptos-key-command-$line[1]:"
        case $line[1] in
            (generate)
_arguments "${_arguments_options[@]}" \
'--key-type=[Key type to generate. Must be one of \[x25519, ed25519\]]:KEY_TYPE: ' \
'--random-seed=[The seed used for key generation, should be a 64 character hex string and only used for testing]:RANDOM_SEED: ' \
'--output-file=[Output file name]:OUTPUT_FILE: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(extract-peer)
_arguments "${_arguments_options[@]}" \
'--host=[Host and port of the full node]:HOST: ' \
'--private-network-key-file=[x25519 Private key input file name]:PRIVATE_NETWORK_KEY_FILE: ' \
'--private-network-key=[x25519 Private key encoded in a type as shown in `encoding`]:PRIVATE_NETWORK_KEY: ' \
'--public-network-key-file=[x25519 Public key input file name]:PUBLIC_NETWORK_KEY_FILE: ' \
'--public-network-key=[x25519 Public key encoded in a type as shown in `encoding`]:PUBLIC_NETWORK_KEY: ' \
'--output-file=[Output file name]:OUTPUT_FILE: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'*::subcommand -- The subcommand whose help message to display:' \
&& ret=0
;;
        esac
    ;;
esac
;;
(move)
_arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
":: :_aptos__move_commands" \
"*::: :->move" \
&& ret=0

    case $state in
    (move)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:aptos-move-command-$line[1]:"
        case $line[1] in
            (compile)
_arguments "${_arguments_options[@]}" \
'--package-dir=[Path to a move package (the folder with a Move.toml file)]:PACKAGE_DIR: ' \
'--output-dir=[Path to save the compiled move package]:OUTPUT_DIR: ' \
'--named-addresses=[Named addresses for the move binary]:NAMED_ADDRESSES: ' \
'--included-artifacts=[Artifacts to be generated when building this package]:INCLUDED_ARTIFACTS: ' \
'--save-metadata[Whether package metadata should be generated and stored in the package'\''s build directory. This metadata can be used to construct a transaction to publish a package]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(init)
_arguments "${_arguments_options[@]}" \
'--name=[Name of the new move package]:NAME: ' \
'--package-dir=[Path to create the new move package]:PACKAGE_DIR: ' \
'--named-addresses=[Named addresses for the move binary]:NAMED_ADDRESSES: ' \
'--framework-git-rev=[Git revision or branch for the Aptos framework]:FRAMEWORK_GIT_REV: ' \
'--framework-local-dir=[Use a local framework directory]:FRAMEWORK_LOCAL_DIR: ' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(publish)
_arguments "${_arguments_options[@]}" \
'--included-artifacts=[What artifacts to include in the package. This can be one of `none`, `sparse`, and `all`. `none` is the most compact form and does not allow to reconstruct a source package from chain; `sparse` is the minimal set of artifacts needed to reconstruct a source package; `all` includes all available artifacts. The choice of included artifacts heavily influences the size and therefore gas cost of publishing: `none` is the size of bytecode alone; `sparse` is roughly 2 times as much; and `all` 3-4 as much]:INCLUDED_ARTIFACTS: ' \
'--package-dir=[Path to a move package (the folder with a Move.toml file)]:PACKAGE_DIR: ' \
'--output-dir=[Path to save the compiled move package]:OUTPUT_DIR: ' \
'--named-addresses=[Named addresses for the move binary]:NAMED_ADDRESSES: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--legacy-flow[Whether to use the legacy publishing flow. This will be soon removed]' \
'--override-size-check[Whether to override the check for maximal size of published data]' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(download)
_arguments "${_arguments_options[@]}" \
'--account=[Address of the account containing the package]:ACCOUNT: ' \
'--package=[Name of the package]:PACKAGE: ' \
'--output-dir=[Directory to store downloaded package. Defaults to the current directory]:OUTPUT_DIR: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(list)
_arguments "${_arguments_options[@]}" \
'--account=[Address of the account for which to list packages]:ACCOUNT: ' \
'--query=[Type of resources to query]:QUERY: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(clean)
_arguments "${_arguments_options[@]}" \
'--package-dir=[Path to a move package (the folder with a Move.toml file)]:PACKAGE_DIR: ' \
'--output-dir=[Path to save the compiled move package]:OUTPUT_DIR: ' \
'--named-addresses=[Named addresses for the move binary]:NAMED_ADDRESSES: ' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(run)
_arguments "${_arguments_options[@]}" \
'--function-id=[Function name as `<ADDRESS>::<MODULE_ID>::<FUNCTION_NAME>`]:FUNCTION_ID: ' \
'*--args=[Arguments combined with their type separated by spaces]:ARGS: ' \
'*--type-args=[TypeTag arguments separated by spaces]:TYPE_ARGS: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(run-script)
_arguments "${_arguments_options[@]}" \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--script-path=[Path to the Move script for the proposal]:SCRIPT_PATH: ' \
'--compiled-script-path=[Path to the Move script for the proposal]:COMPILED_SCRIPT_PATH: ' \
'--framework-git-rev=[Git revision or branch for the Aptos framework]:FRAMEWORK_GIT_REV: ' \
'--framework-local-dir=[Use a local framework directory]:FRAMEWORK_LOCAL_DIR: ' \
'*--args=[Arguments combined with their type separated by spaces]:ARGS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(test)
_arguments "${_arguments_options[@]}" \
'--filter=[A filter string to determine which unit tests to run]:FILTER: ' \
'--package-dir=[Path to a move package (the folder with a Move.toml file)]:PACKAGE_DIR: ' \
'--output-dir=[Path to save the compiled move package]:OUTPUT_DIR: ' \
'--named-addresses=[Named addresses for the move binary]:NAMED_ADDRESSES: ' \
'-i+[Bound the number of instructions that can be executed by any one test]:instructions: ' \
'--instructions=[Bound the number of instructions that can be executed by any one test]:instructions: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(prove)
_arguments "${_arguments_options[@]}" \
'--filter=[A filter string to determine which files to verify]:FILTER: ' \
'--package-dir=[Path to a move package (the folder with a Move.toml file)]:PACKAGE_DIR: ' \
'--output-dir=[Path to save the compiled move package]:OUTPUT_DIR: ' \
'--named-addresses=[Named addresses for the move binary]:NAMED_ADDRESSES: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(transactional-test)
_arguments "${_arguments_options[@]}" \
'--filter=[The filter string is tested against the name of all tests, and only those tests whose names contain the filter are run]:FILTER: ' \
'--test-threads=[Number of threads used for running tests in parallel]:TEST_THREADS: ' \
'--root-path=[Path to contain the tests]:ROOT_PATH: ' \
'--pattern=[Pattern to match the test files]:PATTERN: ' \
'--exact[Exactly match filters rather than match by substring]' \
'--quiet[Output minimal information]' \
'--list[List all tests]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'*::subcommand -- The subcommand whose help message to display:' \
&& ret=0
;;
        esac
    ;;
esac
;;
(node)
_arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
":: :_aptos__node_commands" \
"*::: :->node" \
&& ret=0

    case $state in
    (node)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:aptos-node-command-$line[1]:"
        case $line[1] in
            (get-stake-pool)
_arguments "${_arguments_options[@]}" \
'--owner-address=[]:OWNER_ADDRESS: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(initialize-validator)
_arguments "${_arguments_options[@]}" \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--operator-config-file=[Operator Configuration file, created from the `genesis set-validator-configuration` command]:OPERATOR_CONFIG_FILE: ' \
'--consensus-public-key=[Hex encoded Consensus public key]:CONSENSUS_PUBLIC_KEY: ' \
'--proof-of-possession=[Hex encoded Consensus proof of possession]:PROOF_OF_POSSESSION: ' \
'--validator-host=[Host and port pair for the validator e.g. 127.0.0.1:6180]:VALIDATOR_HOST: ' \
'--validator-network-public-key=[Validator x25519 public network key]:VALIDATOR_NETWORK_PUBLIC_KEY: ' \
'--full-node-host=[Host and port pair for the fullnode e.g. 127.0.0.1:6180.  Optional]:FULL_NODE_HOST: ' \
'--full-node-network-public-key=[Full node x25519 public network key]:FULL_NODE_NETWORK_PUBLIC_KEY: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(join-validator-set)
_arguments "${_arguments_options[@]}" \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--pool-address=[Address of the Staking pool]:POOL_ADDRESS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(leave-validator-set)
_arguments "${_arguments_options[@]}" \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--pool-address=[Address of the Staking pool]:POOL_ADDRESS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(show-validator-config)
_arguments "${_arguments_options[@]}" \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--pool-address=[Address of the Staking pool]:POOL_ADDRESS: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(show-validator-set)
_arguments "${_arguments_options[@]}" \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(show-validator-stake)
_arguments "${_arguments_options[@]}" \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--pool-address=[Address of the Staking pool]:POOL_ADDRESS: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(run-local-testnet)
_arguments "${_arguments_options[@]}" \
'--config-path=[An overridable config template for the test node]:CONFIG_PATH: ' \
'--test-dir=[The directory to save all files for the node]:TEST_DIR: ' \
'--seed=[Random seed for key generation in test mode]:SEED: ' \
'--faucet-port=[Port to run the faucet on]:FAUCET_PORT: ' \
'--force-restart[Clean the state and start with a new chain at genesis]' \
'--with-faucet[Run a faucet alongside the node]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'--do-not-delegate[Disable the delegation of minting to a dedicated account]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(update-consensus-key)
_arguments "${_arguments_options[@]}" \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--pool-address=[Address of the Staking pool]:POOL_ADDRESS: ' \
'--operator-config-file=[Operator Configuration file, created from the `genesis set-validator-configuration` command]:OPERATOR_CONFIG_FILE: ' \
'--consensus-public-key=[Hex encoded Consensus public key]:CONSENSUS_PUBLIC_KEY: ' \
'--proof-of-possession=[Hex encoded Consensus proof of possession]:PROOF_OF_POSSESSION: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(update-validator-network-addresses)
_arguments "${_arguments_options[@]}" \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--pool-address=[Address of the Staking pool]:POOL_ADDRESS: ' \
'--operator-config-file=[Operator Configuration file, created from the `genesis set-validator-configuration` command]:OPERATOR_CONFIG_FILE: ' \
'--validator-host=[Host and port pair for the validator e.g. 127.0.0.1:6180]:VALIDATOR_HOST: ' \
'--validator-network-public-key=[Validator x25519 public network key]:VALIDATOR_NETWORK_PUBLIC_KEY: ' \
'--full-node-host=[Host and port pair for the fullnode e.g. 127.0.0.1:6180.  Optional]:FULL_NODE_HOST: ' \
'--full-node-network-public-key=[Full node x25519 public network key]:FULL_NODE_NETWORK_PUBLIC_KEY: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(analyze-validator-performance)
_arguments "${_arguments_options[@]}" \
'--start-epoch=[First epoch to analyze]:START_EPOCH: ' \
'--end-epoch=[Last epoch to analyze]:END_EPOCH: ' \
'--analyze-mode=[Analyze mode for the validator: \[All, DetailedEpochTable, ValidatorHealthOverTime, NetworkHealthOverTime\]]:ANALYZE_MODE:((all\:"Print all other modes simultaneously"
detailed-epoch-table\:"For each epoch, print a detailed table containing performance of each of the validators"
validator-health-over-time\:"For each validator, summarize it'\''s performance in an epoch into one of the predefined reliability buckets, and prints it'\''s performance across epochs"
network-health-over-time\:"For each epoch summarize how many validators were in each of the reliability buckets"))' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(bootstrap-db-from-backup)
_arguments "${_arguments_options[@]}" \
'--config-path=[Config file for the source backup, pointing to local files or cloud storage and commands needed to access them.]:CONFIG_PATH: ' \
'--target-db-dir=[Target dir where the tool recreates a AptosDB with snapshots and transactions provided in the backup. The data folder can later be used to start an Aptos node. e.g. /opt/aptos/data/db]:DB_DIR: ' \
'--metadata-cache-dir=[Metadata cache dir. If specified and shared across runs, metadata files in cache won'\''t be downloaded again from backup source, speeding up tool boot up significantly. Cache content can be messed up if used across the devnet, the testnet and the mainnet, hence it \[Defaults to temporary dir\].]:DIR: ' \
'--concurrent-downloads=[Number of concurrent downloads from the backup storage. This covers the initial metadata downloads as well. Speeds up remote backup access. \[Defaults to number of CPUs\]]:CONCURRENT_DOWNLOADS: ' \
'--replay-concurrency-level=[concurrency_level used by the transaction executor, applicable when replaying transactions after a state snapshot. \[Defaults to number of CPUs\]]:REPLAY_CONCURRENCY_LEVEL: ' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'*::subcommand -- The subcommand whose help message to display:' \
&& ret=0
;;
        esac
    ;;
esac
;;
(stake)
_arguments "${_arguments_options[@]}" \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
":: :_aptos__stake_commands" \
"*::: :->stake" \
&& ret=0

    case $state in
    (stake)
        words=($line[1] "${words[@]}")
        (( CURRENT += 1 ))
        curcontext="${curcontext%:*:*}:aptos-stake-command-$line[1]:"
        case $line[1] in
            (add-stake)
_arguments "${_arguments_options[@]}" \
'--amount=[Amount of Octas (10^-8 APT) to add to stake]:AMOUNT: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(create-staking-contract)
_arguments "${_arguments_options[@]}" \
'--operator=[Account Address of operator]:OPERATOR: ' \
'--voter=[Account Address of delegated voter]:VOTER: ' \
'--amount=[Amount to create the staking contract with]:AMOUNT: ' \
'--commission-percentage=[Percentage of accumulated rewards to pay the operator as commission]:COMMISSION_PERCENTAGE: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(unlock-stake)
_arguments "${_arguments_options[@]}" \
'--amount=[Amount of Octas (10^-8 APT) to unlock]:AMOUNT: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(withdraw-stake)
_arguments "${_arguments_options[@]}" \
'--amount=[Amount of Octas (10^-8 APT) to withdraw]:AMOUNT: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(increase-lockup)
_arguments "${_arguments_options[@]}" \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(initialize-stake-owner)
_arguments "${_arguments_options[@]}" \
'--initial-stake-amount=[Initial amount of Octas (10^-8 APT) to be staked]:INITIAL_STAKE_AMOUNT: ' \
'--operator-address=[Account Address of delegated operator]:OPERATOR_ADDRESS: ' \
'--voter-address=[Account address of delegated voter]:VOTER_ADDRESS: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(set-operator)
_arguments "${_arguments_options[@]}" \
'--operator-address=[Account Address of delegated operator]:OPERATOR_ADDRESS: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(set-delegated-voter)
_arguments "${_arguments_options[@]}" \
'--voter-address=[Account Address of delegated voter]:VOTER_ADDRESS: ' \
'--sender-account=[Sender account address]:SENDER_ACCOUNT: ' \
'--private-key-file=[Private key input file name]:PRIVATE_KEY_FILE: ' \
'--private-key=[Private key encoded in a type as shown in `encoding`]:PRIVATE_KEY: ' \
'--encoding=[Encoding of data as one of \[base64, bcs, hex\]]:ENCODING: ' \
'--profile=[Profile to use from the CLI config]:PROFILE: ' \
'--url=[URL to a fullnode on the network]:URL: ' \
'--connection-timeout-s=[Connection timeout in seconds, used for the REST endpoint of the fullnode]:CONNECTION_TIMEOUT_S: ' \
'--gas-unit-price=[Gas multiplier per unit of gas]:GAS_UNIT_PRICE: ' \
'--max-gas=[Maximum amount of gas units to be used to send this transaction]:MAX_GAS: ' \
'--estimate-max-gas[\[Deprecated\] Estimate maximum gas via simulation]' \
'--assume-yes[Assume yes for all yes/no prompts]' \
'--assume-no[Assume no for all yes/no prompts]' \
'-h[Print help information]' \
'--help[Print help information]' \
'-V[Print version information]' \
'--version[Print version information]' \
&& ret=0
;;
(help)
_arguments "${_arguments_options[@]}" \
'*::subcommand -- The subcommand whose help message to display:' \
&& ret=0
;;
        esac
    ;;
esac
;;
(help)
_arguments "${_arguments_options[@]}" \
'*::subcommand -- The subcommand whose help message to display:' \
&& ret=0
;;
        esac
    ;;
esac
}

(( $+functions[_aptos_commands] )) ||
_aptos_commands() {
    local commands; commands=(
'account:Tool for interacting with accounts' \
'config:Tool for interacting with configuration of the Aptos CLI tool' \
'genesis:Tool for setting up an Aptos chain Genesis transaction' \
'governance:Tool for on-chain governance' \
'info:Show build information about the CLI' \
'init:Tool to initialize current directory for the aptos tool' \
'key:Tool for generating, inspecting, and interacting with keys' \
'move:Tool for Move related operations' \
'node:Tool for operations related to nodes' \
'stake:Tool for manipulating stake' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'aptos commands' commands "$@"
}
(( $+functions[_aptos__account_commands] )) ||
_aptos__account_commands() {
    local commands; commands=(
'create:Command to create a new account on-chain' \
'create-resource-account:Command to create a resource account on-chain' \
'fund-with-faucet:Command to fund an account with tokens from a faucet' \
'list:Command to list resources, modules, or other items owned by an address' \
'lookup-address:Command to lookup the account adress through on-chain lookup table' \
'rotate-key:Command to rotate an account'\''s authentication key' \
'transfer:Command to transfer APT coins between accounts' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'aptos account commands' commands "$@"
}
(( $+functions[_aptos__stake__add-stake_commands] )) ||
_aptos__stake__add-stake_commands() {
    local commands; commands=()
    _describe -t commands 'aptos stake add-stake commands' commands "$@"
}
(( $+functions[_aptos__node__analyze-validator-performance_commands] )) ||
_aptos__node__analyze-validator-performance_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node analyze-validator-performance commands' commands "$@"
}
(( $+functions[_aptos__node__bootstrap-db-from-backup_commands] )) ||
_aptos__node__bootstrap-db-from-backup_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node bootstrap-db-from-backup commands' commands "$@"
}
(( $+functions[_aptos__move__clean_commands] )) ||
_aptos__move__clean_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move clean commands' commands "$@"
}
(( $+functions[_aptos__move__compile_commands] )) ||
_aptos__move__compile_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move compile commands' commands "$@"
}
(( $+functions[_aptos__config_commands] )) ||
_aptos__config_commands() {
    local commands; commands=(
'init:Tool to initialize current directory for the aptos tool' \
'generate-shell-completions:Generates shell completion files' \
'set-global-config:Set global configuration settings' \
'show-global-config:Shows the properties in the global config' \
'show-profiles:Shows the current profiles available' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'aptos config commands' commands "$@"
}
(( $+functions[_aptos__account__create_commands] )) ||
_aptos__account__create_commands() {
    local commands; commands=()
    _describe -t commands 'aptos account create commands' commands "$@"
}
(( $+functions[_aptos__account__create-resource-account_commands] )) ||
_aptos__account__create-resource-account_commands() {
    local commands; commands=()
    _describe -t commands 'aptos account create-resource-account commands' commands "$@"
}
(( $+functions[_aptos__stake__create-staking-contract_commands] )) ||
_aptos__stake__create-staking-contract_commands() {
    local commands; commands=()
    _describe -t commands 'aptos stake create-staking-contract commands' commands "$@"
}
(( $+functions[_aptos__move__download_commands] )) ||
_aptos__move__download_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move download commands' commands "$@"
}
(( $+functions[_aptos__governance__execute-proposal_commands] )) ||
_aptos__governance__execute-proposal_commands() {
    local commands; commands=()
    _describe -t commands 'aptos governance execute-proposal commands' commands "$@"
}
(( $+functions[_aptos__key__extract-peer_commands] )) ||
_aptos__key__extract-peer_commands() {
    local commands; commands=()
    _describe -t commands 'aptos key extract-peer commands' commands "$@"
}
(( $+functions[_aptos__account__fund-with-faucet_commands] )) ||
_aptos__account__fund-with-faucet_commands() {
    local commands; commands=()
    _describe -t commands 'aptos account fund-with-faucet commands' commands "$@"
}
(( $+functions[_aptos__key__generate_commands] )) ||
_aptos__key__generate_commands() {
    local commands; commands=()
    _describe -t commands 'aptos key generate commands' commands "$@"
}
(( $+functions[_aptos__genesis__generate-admin-write-set_commands] )) ||
_aptos__genesis__generate-admin-write-set_commands() {
    local commands; commands=()
    _describe -t commands 'aptos genesis generate-admin-write-set commands' commands "$@"
}
(( $+functions[_aptos__genesis__generate-genesis_commands] )) ||
_aptos__genesis__generate-genesis_commands() {
    local commands; commands=()
    _describe -t commands 'aptos genesis generate-genesis commands' commands "$@"
}
(( $+functions[_aptos__genesis__generate-keys_commands] )) ||
_aptos__genesis__generate-keys_commands() {
    local commands; commands=()
    _describe -t commands 'aptos genesis generate-keys commands' commands "$@"
}
(( $+functions[_aptos__genesis__generate-layout-template_commands] )) ||
_aptos__genesis__generate-layout-template_commands() {
    local commands; commands=()
    _describe -t commands 'aptos genesis generate-layout-template commands' commands "$@"
}
(( $+functions[_aptos__config__generate-shell-completions_commands] )) ||
_aptos__config__generate-shell-completions_commands() {
    local commands; commands=()
    _describe -t commands 'aptos config generate-shell-completions commands' commands "$@"
}
(( $+functions[_aptos__governance__generate-upgrade-proposal_commands] )) ||
_aptos__governance__generate-upgrade-proposal_commands() {
    local commands; commands=()
    _describe -t commands 'aptos governance generate-upgrade-proposal commands' commands "$@"
}
(( $+functions[_aptos__genesis_commands] )) ||
_aptos__genesis_commands() {
    local commands; commands=(
'generate-genesis:Generate genesis from a git repository' \
'generate-keys:Generate account key, consensus key, and network key for a validator' \
'generate-layout-template:Generate a Layout template file with empty values' \
'generate-admin-write-set:Generate a WriteSet genesis compiled from a script file' \
'setup-git:Setup a shared Git repository for Genesis' \
'set-validator-configuration:Set validator configuration for a single validator in the git repository' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'aptos genesis commands' commands "$@"
}
(( $+functions[_aptos__node__get-stake-pool_commands] )) ||
_aptos__node__get-stake-pool_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node get-stake-pool commands' commands "$@"
}
(( $+functions[_aptos__governance_commands] )) ||
_aptos__governance_commands() {
    local commands; commands=(
'propose:Submit proposal to other validators to be proposed on' \
'vote:Submit a vote on a current proposal' \
'execute-proposal:Execute a proposal that has passed voting requirements' \
'generate-upgrade-proposal:Generates a package upgrade proposal script' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'aptos governance commands' commands "$@"
}
(( $+functions[_aptos__account__help_commands] )) ||
_aptos__account__help_commands() {
    local commands; commands=()
    _describe -t commands 'aptos account help commands' commands "$@"
}
(( $+functions[_aptos__config__help_commands] )) ||
_aptos__config__help_commands() {
    local commands; commands=()
    _describe -t commands 'aptos config help commands' commands "$@"
}
(( $+functions[_aptos__genesis__help_commands] )) ||
_aptos__genesis__help_commands() {
    local commands; commands=()
    _describe -t commands 'aptos genesis help commands' commands "$@"
}
(( $+functions[_aptos__governance__help_commands] )) ||
_aptos__governance__help_commands() {
    local commands; commands=()
    _describe -t commands 'aptos governance help commands' commands "$@"
}
(( $+functions[_aptos__help_commands] )) ||
_aptos__help_commands() {
    local commands; commands=()
    _describe -t commands 'aptos help commands' commands "$@"
}
(( $+functions[_aptos__key__help_commands] )) ||
_aptos__key__help_commands() {
    local commands; commands=()
    _describe -t commands 'aptos key help commands' commands "$@"
}
(( $+functions[_aptos__move__help_commands] )) ||
_aptos__move__help_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move help commands' commands "$@"
}
(( $+functions[_aptos__node__help_commands] )) ||
_aptos__node__help_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node help commands' commands "$@"
}
(( $+functions[_aptos__stake__help_commands] )) ||
_aptos__stake__help_commands() {
    local commands; commands=()
    _describe -t commands 'aptos stake help commands' commands "$@"
}
(( $+functions[_aptos__stake__increase-lockup_commands] )) ||
_aptos__stake__increase-lockup_commands() {
    local commands; commands=()
    _describe -t commands 'aptos stake increase-lockup commands' commands "$@"
}
(( $+functions[_aptos__info_commands] )) ||
_aptos__info_commands() {
    local commands; commands=()
    _describe -t commands 'aptos info commands' commands "$@"
}
(( $+functions[_aptos__config__init_commands] )) ||
_aptos__config__init_commands() {
    local commands; commands=()
    _describe -t commands 'aptos config init commands' commands "$@"
}
(( $+functions[_aptos__init_commands] )) ||
_aptos__init_commands() {
    local commands; commands=()
    _describe -t commands 'aptos init commands' commands "$@"
}
(( $+functions[_aptos__move__init_commands] )) ||
_aptos__move__init_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move init commands' commands "$@"
}
(( $+functions[_aptos__stake__initialize-stake-owner_commands] )) ||
_aptos__stake__initialize-stake-owner_commands() {
    local commands; commands=()
    _describe -t commands 'aptos stake initialize-stake-owner commands' commands "$@"
}
(( $+functions[_aptos__node__initialize-validator_commands] )) ||
_aptos__node__initialize-validator_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node initialize-validator commands' commands "$@"
}
(( $+functions[_aptos__node__join-validator-set_commands] )) ||
_aptos__node__join-validator-set_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node join-validator-set commands' commands "$@"
}
(( $+functions[_aptos__key_commands] )) ||
_aptos__key_commands() {
    local commands; commands=(
'generate:Generates a `x25519` or `ed25519` key' \
'extract-peer:CLI tool for extracting full peer information for an upstream peer' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'aptos key commands' commands "$@"
}
(( $+functions[_aptos__node__leave-validator-set_commands] )) ||
_aptos__node__leave-validator-set_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node leave-validator-set commands' commands "$@"
}
(( $+functions[_aptos__account__list_commands] )) ||
_aptos__account__list_commands() {
    local commands; commands=()
    _describe -t commands 'aptos account list commands' commands "$@"
}
(( $+functions[_aptos__move__list_commands] )) ||
_aptos__move__list_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move list commands' commands "$@"
}
(( $+functions[_aptos__account__lookup-address_commands] )) ||
_aptos__account__lookup-address_commands() {
    local commands; commands=()
    _describe -t commands 'aptos account lookup-address commands' commands "$@"
}
(( $+functions[_aptos__move_commands] )) ||
_aptos__move_commands() {
    local commands; commands=(
'compile:Compiles a package and returns the \[`ModuleId`\]s' \
'init:Creates a new Move package at the given location' \
'publish:Publishes the modules in a Move package to the Aptos blockchain' \
'download:Downloads a package and stores it in a directory named after the package' \
'list:Lists information about packages and modules on-chain' \
'clean:Cleans derived artifacts of a package' \
'run:Run a Move function' \
'run-script:Run a Move script' \
'test:Runs Move unit tests for a package' \
'prove:Proves the Move package' \
'transactional-test:Run Move transactional tests' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'aptos move commands' commands "$@"
}
(( $+functions[_aptos__node_commands] )) ||
_aptos__node_commands() {
    local commands; commands=(
'get-stake-pool:Options specific to using the Rest endpoint' \
'initialize-validator:Register the current account as a validator node operator of it'\''s own owned stake' \
'join-validator-set:Join the validator set after meeting staking requirements' \
'leave-validator-set:Leave the validator set' \
'show-validator-config:Show validator details of the current validator' \
'show-validator-set:Show validator details of the validator set' \
'show-validator-stake:Show validator details of the current validator' \
'run-local-testnet:Run local testnet' \
'update-consensus-key:Update consensus key for the validator node' \
'update-validator-network-addresses:Update the current validator'\''s network and fullnode addresses' \
'analyze-validator-performance:Tool to analyze the performance of an individual validator' \
'bootstrap-db-from-backup:Tool to bootstrap DB from backup' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'aptos node commands' commands "$@"
}
(( $+functions[_aptos__governance__propose_commands] )) ||
_aptos__governance__propose_commands() {
    local commands; commands=()
    _describe -t commands 'aptos governance propose commands' commands "$@"
}
(( $+functions[_aptos__move__prove_commands] )) ||
_aptos__move__prove_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move prove commands' commands "$@"
}
(( $+functions[_aptos__move__publish_commands] )) ||
_aptos__move__publish_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move publish commands' commands "$@"
}
(( $+functions[_aptos__account__rotate-key_commands] )) ||
_aptos__account__rotate-key_commands() {
    local commands; commands=()
    _describe -t commands 'aptos account rotate-key commands' commands "$@"
}
(( $+functions[_aptos__move__run_commands] )) ||
_aptos__move__run_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move run commands' commands "$@"
}
(( $+functions[_aptos__node__run-local-testnet_commands] )) ||
_aptos__node__run-local-testnet_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node run-local-testnet commands' commands "$@"
}
(( $+functions[_aptos__move__run-script_commands] )) ||
_aptos__move__run-script_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move run-script commands' commands "$@"
}
(( $+functions[_aptos__stake__set-delegated-voter_commands] )) ||
_aptos__stake__set-delegated-voter_commands() {
    local commands; commands=()
    _describe -t commands 'aptos stake set-delegated-voter commands' commands "$@"
}
(( $+functions[_aptos__config__set-global-config_commands] )) ||
_aptos__config__set-global-config_commands() {
    local commands; commands=()
    _describe -t commands 'aptos config set-global-config commands' commands "$@"
}
(( $+functions[_aptos__stake__set-operator_commands] )) ||
_aptos__stake__set-operator_commands() {
    local commands; commands=()
    _describe -t commands 'aptos stake set-operator commands' commands "$@"
}
(( $+functions[_aptos__genesis__set-validator-configuration_commands] )) ||
_aptos__genesis__set-validator-configuration_commands() {
    local commands; commands=()
    _describe -t commands 'aptos genesis set-validator-configuration commands' commands "$@"
}
(( $+functions[_aptos__genesis__setup-git_commands] )) ||
_aptos__genesis__setup-git_commands() {
    local commands; commands=()
    _describe -t commands 'aptos genesis setup-git commands' commands "$@"
}
(( $+functions[_aptos__config__show-global-config_commands] )) ||
_aptos__config__show-global-config_commands() {
    local commands; commands=()
    _describe -t commands 'aptos config show-global-config commands' commands "$@"
}
(( $+functions[_aptos__config__show-profiles_commands] )) ||
_aptos__config__show-profiles_commands() {
    local commands; commands=()
    _describe -t commands 'aptos config show-profiles commands' commands "$@"
}
(( $+functions[_aptos__node__show-validator-config_commands] )) ||
_aptos__node__show-validator-config_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node show-validator-config commands' commands "$@"
}
(( $+functions[_aptos__node__show-validator-set_commands] )) ||
_aptos__node__show-validator-set_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node show-validator-set commands' commands "$@"
}
(( $+functions[_aptos__node__show-validator-stake_commands] )) ||
_aptos__node__show-validator-stake_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node show-validator-stake commands' commands "$@"
}
(( $+functions[_aptos__stake_commands] )) ||
_aptos__stake_commands() {
    local commands; commands=(
'add-stake:Stake APT coins to the stake pool' \
'create-staking-contract:Common options for interacting with an account for a validator' \
'unlock-stake:Unlock staked APT coins' \
'withdraw-stake:Withdraw unlocked staked APT coins' \
'increase-lockup:Increase lockup of all staked APT coins in the stake pool' \
'initialize-stake-owner:Initialize stake owner' \
'set-operator:Delegate operator capability from the stake owner to another account' \
'set-delegated-voter:Delegate voting capability from the stake owner to another account' \
'help:Print this message or the help of the given subcommand(s)' \
    )
    _describe -t commands 'aptos stake commands' commands "$@"
}
(( $+functions[_aptos__move__test_commands] )) ||
_aptos__move__test_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move test commands' commands "$@"
}
(( $+functions[_aptos__move__transactional-test_commands] )) ||
_aptos__move__transactional-test_commands() {
    local commands; commands=()
    _describe -t commands 'aptos move transactional-test commands' commands "$@"
}
(( $+functions[_aptos__account__transfer_commands] )) ||
_aptos__account__transfer_commands() {
    local commands; commands=()
    _describe -t commands 'aptos account transfer commands' commands "$@"
}
(( $+functions[_aptos__stake__unlock-stake_commands] )) ||
_aptos__stake__unlock-stake_commands() {
    local commands; commands=()
    _describe -t commands 'aptos stake unlock-stake commands' commands "$@"
}
(( $+functions[_aptos__node__update-consensus-key_commands] )) ||
_aptos__node__update-consensus-key_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node update-consensus-key commands' commands "$@"
}
(( $+functions[_aptos__node__update-validator-network-addresses_commands] )) ||
_aptos__node__update-validator-network-addresses_commands() {
    local commands; commands=()
    _describe -t commands 'aptos node update-validator-network-addresses commands' commands "$@"
}
(( $+functions[_aptos__governance__vote_commands] )) ||
_aptos__governance__vote_commands() {
    local commands; commands=()
    _describe -t commands 'aptos governance vote commands' commands "$@"
}
(( $+functions[_aptos__stake__withdraw-stake_commands] )) ||
_aptos__stake__withdraw-stake_commands() {
    local commands; commands=()
    _describe -t commands 'aptos stake withdraw-stake commands' commands "$@"
}

_aptos "$@"
