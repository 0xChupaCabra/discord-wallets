import discord
from discord.ext import commands
import asyncio
import json
import mysql.connector
import time
import random
import requests

#SQL connection

mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    passwd="pass",
    database="wallets",
    autocommit=True
)


mycursor = mydb.cursor()
bot = commands.Bot(command_prefix='!')
@bot.event
async def on_ready():
    channel = bot.get_channel(CHANNELID) #EDIT HERE

    mycursor.execute("SELECT * FROM info")
    wallets = mycursor.fetchall()
    for x in wallets:
        id_1 = x[0]
        owner = x[1]
        repo = x[2]
        tag = x[3]
        print(x)
        try:
            r = requests.get('https://api.github.com/repos/'+owner+'/'+repo+'/releases/latest')
            result = r.json()
            if result["tag_name"] != tag:
                await channel.send("New " + repo + " Release \n" + result["html_url"])
                sql_2 = "UPDATE info SET tag = '%s' WHERE id = %s"%(result["tag_name"], id_1)
                mycursor.execute(sql_2)
                mydb.commit()
                time.sleep(120)
            elif result["tag_name"] == tag:
                #await channel.send(owner + " " + repo + " is updated")
                print(owner + " " + repo + " is updated")
                time.sleep(120)

        except:
            
            print("error")
            time.sleep(120)
            continue
        


bot.run('DISCORDTOKEN') #EDIT HERE
