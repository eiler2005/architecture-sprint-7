#!/bin/bash

# Создание пользователей Kubernetes
kubectl config set-credentials devops-user --client-certificate=devops-user.crt --client-key=devops-user.key
kubectl config set-credentials developer-user --client-certificate=developer-user.crt --client-key=developer-user.key
kubectl config set-credentials security-user --client-certificate=security-user.crt --client-key=security-user.key

# Добавление пользователей в контекст
kubectl config set-context devops-context --cluster=minikube --user=devops-user
kubectl config set-context developer-context --cluster=minikube --user=developer-user
kubectl config set-context security-context --cluster=minikube --user=security-user

# Уведомление
echo "Пользователи созданы и добавлены в контексты."