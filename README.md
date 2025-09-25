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
X_BEARER_TOKEN=AAAAAAAAAAAAAAAAAAAAANRILgAAAAAAnNwIzUejRCOuH5E6I8xnZz4puTs%3D1Zv7ttfk8LF81IUq16cHjhLTvJu4FA33AGWWjCpTnA
X_AUTH_TOKEN=5eXXXXXXXf3
X_CT0_TOKEN=16a9d3XXXXXXXXXXXXXXXXXXaae7f
```
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