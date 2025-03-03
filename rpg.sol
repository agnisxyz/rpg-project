// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

contract RPG {
    int64 baseDamage = 13;
    int64 bossHealth = 100;

    function attack () public  {
        if (bossHealth > baseDamage)
        {
        bossHealth -= baseDamage;
        } else  {
            bossHealth = 0;
        }

    }

    function readBossHealth () external view returns (int) {
        return  bossHealth;
    }

    function readBaseDamage () external view returns (int){
        return baseDamage;
    }

    function upgrade () public {
        baseDamage += 10;
    }

    function respawnBoss () public {
        bossHealth = 100;
    }
}
