#!/usr/bin/env node
const { runCommands,run } = require("./runCommands");

//gu = git update

const { determineMasterBranch } = require('./determineMasterBranch.js');

const running = async() => {
    const response = await run(`git branch`,true);
    const branch = response.split(`\n`).find(line => line.includes(`*`)).slice(2).trim();
    const masterBranch = await determineMasterBranch();
    runCommands([
    'git fetch',
    `git checkout  ${masterBranch}`,
    `git pull origin ${masterBranch}`,
    `git checkout ${branch}`,
    'git --no-pager log --oneline --decorate --graph --all -n 5',
    ])
}


running();