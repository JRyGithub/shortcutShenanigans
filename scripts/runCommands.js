#!/usr/bin/env node
const { exec } = require(`child_process`)

const run = async (command)=>{
  return new Promise((resolve,reject)=>{
    let output = ''
    const p = exec(command)
    p.stdout.on(`data`,data => {
      output += data
      process.stdout.write(`${data}`)
     })
    p.stderr.on(`data`,data => reject(data))
    p.on('data',d=>output+=d)
    p.on('error',d=>reject(d))
    p.on('exit',()=>resolve(output))
  })

}

const runCommands = async (commands)=>{
  for(command of commands){
    try{
      await run(command)
    }catch(err){
      console.log(err)
    }
  }
}

module.exports = { run,runCommands }