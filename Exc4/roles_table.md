заполненная таблица ролей

# **Таблица ролей RBAC для Kubernetes**

| **Роль**         | **Права роли**                                                              | **Группы пользователей**     |
|------------------|-----------------------------------------------------------------------------|------------------------------|
| **Администратор** | Полный доступ ко всем ресурсам кластера (не настраиваем, есть по умолчанию) | DevOps Team                 |
| **DevOps**       | Управление настройками кластера без удаления критических ресурсов           | DevOps Engineers         |
| **Developer**    | Только просмотр ресурсов (pods, deployments, services)                      | Developers                  |
| **Security**     | Ограниченный доступ к секретам и журналам безопасности                      | Security Engineers          |

---

# **Как выполнить настройку ролей и привилегий**

## **1. Запустить скрипты в Minikube:**
```bash
chmod +x create_users.sh
./create_users.sh
kubectl apply -f create_roles.yaml
kubectl apply -f bind_roles.yaml
```

## ** 2. Проверить назначенные роли:

```bash
kubectl get rolebindings,clusterrolebindings -A
```