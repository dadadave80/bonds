// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

abstract contract CREhelper {
    //*//////////////////////////////////////////////////////////////////////////
    //                           PRODUCTION FORWARDERS
    //////////////////////////////////////////////////////////////////////////*//

    address constant ARBITRUM_ONE_FORWARDER_ADDRESS = 0xF8344CFd5c43616a4366C34E3EEE75af79a74482;
    address constant AVALANCHE_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant BASE_FORWARDER_ADDRESS = 0xF8344CFd5c43616a4366C34E3EEE75af79a74482;
    address constant BSC_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant ETHEREUM_FORWARDER_ADDRESS = 0x0b93082D9b3C7C97fAcd250082899BAcf3af3885;
    address constant OP_FORWARDER_ADDRESS = 0xF8344CFd5c43616a4366C34E3EEE75af79a74482;
    address constant POLYGON_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant WORLD_CHAIN_FORWARDER_ADDRESS = 0x98B8335d29Aca40840Ed8426dA1A0aAa8677d8D1;
    address constant ZKSYNC_ERA_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;

    address constant APECHAIN_CURTIS_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant ARBITRUM_SEP_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant AVALANCHE_FUJI_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant BASE_SEP_FORWARDER_ADDRESS = 0xF8344CFd5c43616a4366C34E3EEE75af79a74482;
    address constant BSC_TESTNET_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant ETHEREUM_SEP_FORWARDER_ADDRESS = 0xF8344CFd5c43616a4366C34E3EEE75af79a74482;
    address constant HYPERLIQUID_TESTNET_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant INK_SEP_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant JOVAY_TESTNET_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant LINEA_SEP_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant OP_SEP_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant PLASMA_TESTNET_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant POLYGON_AMOY_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant WORLD_CHAIN_SEP_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;
    address constant ZKSYNC_ERA_SEP_FORWARDER_ADDRESS = 0x76c9cf548b4179F8901cda1f8623568b58215E62;

    function _getProdForwarderAddressByChainId(uint256 _chainId) internal pure returns (address) {
        if (_chainId == 1) {
            return ETHEREUM_FORWARDER_ADDRESS;
        } else if (_chainId == 42161) {
            return ARBITRUM_ONE_FORWARDER_ADDRESS;
        } else if (_chainId == 43114) {
            return AVALANCHE_FORWARDER_ADDRESS;
        } else if (_chainId == 8453) {
            return BASE_FORWARDER_ADDRESS;
        } else if (_chainId == 56) {
            return BSC_FORWARDER_ADDRESS;
        } else if (_chainId == 10) {
            return OP_FORWARDER_ADDRESS;
        } else if (_chainId == 137) {
            return POLYGON_FORWARDER_ADDRESS;
        } else if (_chainId == 480) {
            return WORLD_CHAIN_FORWARDER_ADDRESS;
        } else if (_chainId == 324) {
            return ZKSYNC_ERA_FORWARDER_ADDRESS;
        } else if (_chainId == 11155111) {
            return ETHEREUM_SEP_FORWARDER_ADDRESS;
        } else if (_chainId == 11155420) {
            return OP_SEP_FORWARDER_ADDRESS;
        } else if (_chainId == 80002) {
            return POLYGON_AMOY_FORWARDER_ADDRESS;
        } else if (_chainId == 421614) {
            return ARBITRUM_SEP_FORWARDER_ADDRESS;
        } else if (_chainId == 43113) {
            return AVALANCHE_FUJI_FORWARDER_ADDRESS;
        } else if (_chainId == 84532) {
            return BASE_SEP_FORWARDER_ADDRESS;
        } else if (_chainId == 2019775) {
            return JOVAY_TESTNET_FORWARDER_ADDRESS;
        } else if (_chainId == 9746) {
            return PLASMA_TESTNET_FORWARDER_ADDRESS;
        } else if (_chainId == 33111) {
            return APECHAIN_CURTIS_FORWARDER_ADDRESS;
        } else if (_chainId == 763373) {
            return INK_SEP_FORWARDER_ADDRESS;
        } else if (_chainId == 4801) {
            return WORLD_CHAIN_SEP_FORWARDER_ADDRESS;
        } else if (_chainId == 300) {
            return ZKSYNC_ERA_SEP_FORWARDER_ADDRESS;
        } else if (_chainId == 998) {
            return HYPERLIQUID_TESTNET_FORWARDER_ADDRESS;
        } else if (_chainId == 59141) {
            return LINEA_SEP_FORWARDER_ADDRESS;
        } else if (_chainId == 97) {
            return BSC_TESTNET_FORWARDER_ADDRESS;
        } else {
            revert("Unsupported chain");
        }
    }

    //*//////////////////////////////////////////////////////////////////////////
    //                           SIMULATION FORWARDERS
    //////////////////////////////////////////////////////////////////////////*//

    address constant ARBITRUM_ONE_SIM_FORWARDER_ADDRESS = 0xd770499057619C9a76205fD4168161cf94Abc532;
    address constant AVALANCHE_SIM_FORWARDER_ADDRESS = 0xDc21E279934fF6721CaDfDD112DAfb3261f09A2C;
    address constant BASE_SIM_FORWARDER_ADDRESS = 0x5E342a8438B4f5d39e72875FCee6f76B39CCE548;
    address constant BSC_SIM_FORWARDER_ADDRESS = 0x6f3239bbB26e98961e1115aBa83f8a282e5508C8;
    address constant ETHEREUM_SIM_FORWARDER_ADDRESS = 0xA3D1AD4Ac559a6575a114998AffB2fB2Ec97a7D9;
    address constant OP_SIM_FORWARDER_ADDRESS = 0x9119A1501550ED94a3f2794038Ed9258337AfA18;
    address constant POLYGON_SIM_FORWARDER_ADDRESS = 0xF458D621885E29a5003eA9bbBA5280D54e19b1Ce;
    address constant WORLD_CHAIN_SIM_FORWARDER_ADDRESS = 0x6E9EE680ef59ef64Aa8C7371279c27E496b5eDc1;
    address constant ZKSYNC_ERA_SIM_FORWARDER_ADDRESS = 0x6E9EE680ef59ef64Aa8C7371279c27E496b5eDc1;

    address constant APECHAIN_CURTIS_SIM_FORWARDER_ADDRESS = 0x6E9EE680ef59ef64Aa8C7371279c27E496b5eDc1;
    address constant ARC_TESTNET_SIM_FORWARDER_ADDRESS = 0x6E9EE680ef59ef64Aa8C7371279c27E496b5eDc1;
    address constant ARBITRUM_SEP_SIM_FORWARDER_ADDRESS = 0xD41263567DdfeAd91504199b8c6c87371e83ca5d;
    address constant AVALANCHE_FUJI_SIM_FORWARDER_ADDRESS = 0x2E7371a5D032489E4F60216d8D898A4C10805963;
    address constant BASE_SEP_SIM_FORWARDER_ADDRESS = 0x82300bd7c3958625581cc2F77bC6464dcEcDF3e5;
    address constant BSC_TESTNET_SIM_FORWARDER_ADDRESS = 0xA238e42cb8782808DBb2F37E19859244ec4779B0;
    address constant ETHEREUM_SEP_SIM_FORWARDER_ADDRESS = 0x15fC6ae953E024d975e77382eEeC56A9101f9F88;
    address constant HYPERLIQUID_TESTNET_SIM_FORWARDER_ADDRESS = 0xB27fA1c28288c50542527F64BCda22C9FbAc24CB;
    address constant INK_SEP_SIM_FORWARDER_ADDRESS = 0x6E9EE680ef59ef64Aa8C7371279c27E496b5eDc1;
    address constant JOVAY_TESTNET_SIM_FORWARDER_ADDRESS = 0x6E9EE680ef59ef64Aa8C7371279c27E496b5eDc1;
    address constant LINEA_SEP_SIM_FORWARDER_ADDRESS = 0x6E9EE680ef59ef64Aa8C7371279c27E496b5eDc1;
    address constant OP_SEP_SIM_FORWARDER_ADDRESS = 0xA2888380dFF3704a8AB6D1CD1A8f69c15FEa5EE3;
    address constant PLASMA_TESTNET_SIM_FORWARDER_ADDRESS = 0x6E9EE680ef59ef64Aa8C7371279c27E496b5eDc1;
    address constant POLYGON_AMOY_SIM_FORWARDER_ADDRESS = 0x3675A5eb2286A3F87e8278Fc66Edf458a2e3bB74;
    address constant WORLD_CHAIN_SEP_SIM_FORWARDER_ADDRESS = 0x6E9EE680ef59ef64Aa8C7371279c27E496b5eDc1;
    address constant ZKSYNC_ERA_SEP_SIM_FORWARDER_ADDRESS = 0x6E9EE680ef59ef64Aa8C7371279c27E496b5eDc1;

    function _getSimForwarderAddressByChainId(uint256 _chainId) internal pure returns (address) {
        if (_chainId == 1) {
            return ETHEREUM_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 42161) {
            return ARBITRUM_ONE_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 43114) {
            return AVALANCHE_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 8453) {
            return BASE_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 56) {
            return BSC_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 10) {
            return OP_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 137) {
            return POLYGON_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 480) {
            return WORLD_CHAIN_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 324) {
            return ZKSYNC_ERA_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 11155111) {
            return ETHEREUM_SEP_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 5042002) {
            return ARC_TESTNET_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 11155420) {
            return OP_SEP_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 80002) {
            return POLYGON_AMOY_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 421614) {
            return ARBITRUM_SEP_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 43113) {
            return AVALANCHE_FUJI_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 84532) {
            return BASE_SEP_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 2019775) {
            return JOVAY_TESTNET_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 9746) {
            return PLASMA_TESTNET_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 33111) {
            return APECHAIN_CURTIS_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 763373) {
            return INK_SEP_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 4801) {
            return WORLD_CHAIN_SEP_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 300) {
            return ZKSYNC_ERA_SEP_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 998) {
            return HYPERLIQUID_TESTNET_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 59141) {
            return LINEA_SEP_SIM_FORWARDER_ADDRESS;
        } else if (_chainId == 97) {
            return BSC_TESTNET_SIM_FORWARDER_ADDRESS;
        } else {
            revert("Unsupported chain");
        }
    }
}
