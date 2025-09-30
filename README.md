# Data Engineering in Python with JupyterLab

This project spins up a **JupyterLab** instance inside a Docker container with your custom Python dependencies. Environment variables are managed via a `.env` file.

---

## 📂 Project Structure
```
.
├── docker-compose.yml    # Compose configuration
├── Dockerfile            # Builds JupyterLab image with dependencies
├── requirements.txt      # Python dependencies
├── .env                  # Environment variables
├── notebooks/            # The example notebook is here
└── README.md             # This file

````

---

## ⚙️ Setup

### 1. Clone the repository (or copy files)
```bash
git clone https://github.com/vincesagum/jupyter-python-de.git
cd jupyter-python-de
````

### 2. Create and edit `.env`

```bash
cp .env.example .env
```

Fill in your environment variables (e.g., API keys, Jupyter token).

Example:

```env
JUPYTER_TOKEN=devtoken
CONSUMER_KEY=3nVuSoBZnx6U4vzUxf5w
CONSUMER_SECRET=Bcs59EFbbsdF6Sl9Ng71smgStWEGwXXKSjYvPVt7qys
X_OAUTH_TOKEN=5eXXXXXXXf3
X_OAUTH_SECRET=16a9d3XXXXXXXXXXXXXXXXXXaae7f
```

#### For help in getting the X_OAUTH token and secret, scroll to the bottom of this page.
---

## ▶️ Running

Build and start the container:

```bash
docker-compose up --build
```

JupyterLab will be available at:

👉 [http://localhost:8888/?token=devtoken](http://localhost:8888/?token=devtoken)

* If you replaced the value of `JUPYTER_TOKEN` in `.env` for your own token, change `dev_token` to that value.
* The sample notebook (and any notebooks you create) will be saved in the local `./notebooks/` directory.

---

## 🛑 Stopping

Press **CTRL+C** (**CMD+C** on macOS) in the terminal, or run:

```bash
docker-compose down
```

--- 

## 🔑 Getting the X API Token
1. Clone the [nitter](https://github.com/zedeus/nitter.git) repository.
2. Follow the instructions in this [page](https://github.com/zedeus/nitter/wiki/Creating-session-tokens) to create session tokens.
3. Copy the values of `oauth_token` and `oauth_secret` from the generated `sessions.jsonl` file and paste them to the values of `X_OAUTH_TOKEN` and `X_OAUTH_SECRET` in the `.env` file, respectively.