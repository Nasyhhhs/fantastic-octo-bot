from dataclasses import dataclass
import os
#from environs import Env


@dataclass
class TgBot:
    token: str


@dataclass
class Config:
    tg_bot: TgBot

"""
def load_config(path: str = None) -> Config:
    env = Env()
    env.read_env(path)
    return Config(tg_bot=TgBot(token=env('BOT_TOKEN')))
"""

#for Docker
def load_config() -> Config:
    bot_token = os.environ.get('BOT_TOKEN')
    return Config(tg_bot=TgBot(token=bot_token))