```
kind: Pod
apiVersion: v1
metadata:
  name: toolbox
  namespace: default
spec:
  # nodeSelector:
  #   kubernetes.io/hostname: k-dev-a-w2
  # hostNetwork: true
  priorityClassName: system-cluster-critical
  tolerations:
    - operator: Exists
      effect: NoSchedule
    - key: CriticalAddonsOnly
      operator: Exists
    - operator: Exists
      effect: NoExecute
    - key: node.kubernetes.io/not-ready
      operator: Exists
      effect: NoExecute
    - key: node.kubernetes.io/unreachable
      operator: Exists
      effect: NoExecute
    - key: node.kubernetes.io/disk-pressure
      operator: Exists
      effect: NoSchedule
    - key: node.kubernetes.io/memory-pressure
      operator: Exists
      effect: NoSchedule
    - key: node.kubernetes.io/pid-pressure
      operator: Exists
      effect: NoSchedule
    - key: node.kubernetes.io/unschedulable
      operator: Exists
      effect: NoSchedule
    - key: node.kubernetes.io/network-unavailable
      operator: Exists
      effect: NoSchedule
  # volumes:
  #   - name: data
  #     persistentVolumeClaim:
  #       claimName: pvc-name
  #   - name: dev-dir
  #     hostPath:
  #       path: /dev
  containers:
    - name: toolbox
      image: crashntech/toolbox-pod:1.0.4
      imagePullPolicy: IfNotPresent
      command: ["sleep", "infinity"]
      securityContext:
        runAsUser: 0
        runAsGroup: 0
        privileged: true
      # volumeMounts:
      #   - name: data
      #     mountPath: /data
      #   - name: dev-dir
      #     mountPath: /dev
```
