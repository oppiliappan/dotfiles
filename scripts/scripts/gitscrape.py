from bs4 import BeautifulSoup
import requests
import matplotlib.pyplot as plt
from matplotlib import rcParams


plt.ioff()


rcParams['font.family'] = 'Input'
rcParams['lines.linewidth'] = 3
rcParams['lines.color'] = 'b'

site = requests.get("https://github.com/nerdypepper")
site = site.text
soup = BeautifulSoup(site, 'html.parser')


all_rects = soup.find_all("rect")
contrib_list = []
date_list = []

for box in all_rects:
	box = box.get("data-count")
	contrib_list.append(box)

no_of_days = 7

result = list(map(int, contrib_list[-no_of_days:]))
old_result = list(map(int, contrib_list[2 * -no_of_days : -no_of_days]))


# transparent=True,

fig, graphs = plt.subplots()
graphs.plot(result, color="#8ec07c", aa="true")
graphs.plot(old_result, color="#504945", aa="true")

fig.patch.set_visible(False)
graphs.axis('off')

# plt.fill_between(range(0,no_of_days), old_result, color='#323232', alpha='0.6')
# plt.fill_between(range(0,no_of_days), result, color='#7f941a', alpha='0.8')
plt.savefig('/home/nerdypepper/scripts/popups/gitgraph.png', dpi=24)

