.class public Lc/c/b/b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/c/b/b$d;,
        Lc/c/b/b$c;,
        Lc/c/b/b$e;,
        Lc/c/b/b$b;
    }
.end annotation


# static fields
.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/util/concurrent/Executor;

.field public static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/c/b/b;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "LOCK"
    .end annotation
.end field


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lc/c/b/f;

.field public final d:Lc/c/b/i/l;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lc/c/b/b;->h:Ljava/lang/Object;

    new-instance v0, Lc/c/b/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lc/c/b/b$d;-><init>(Lc/c/b/b$a;)V

    sput-object v0, Lc/c/b/b;->i:Ljava/util/concurrent/Executor;

    new-instance v0, Lb/f/a;

    invoke-direct {v0}, Lb/f/a;-><init>()V

    sput-object v0, Lc/c/b/b;->j:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lc/c/b/f;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lc/c/b/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lc/c/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lc/c/b/b;->g:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lc/c/b/b;->a:Landroid/content/Context;

    invoke-static {p2}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iput-object p2, p0, Lc/c/b/b;->b:Ljava/lang/String;

    invoke-static {p3}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p3, p0, Lc/c/b/b;->c:Lc/c/b/f;

    const-class p2, Lcom/google/firebase/components/ComponentDiscoveryService;

    .line 1
    new-instance v0, Lc/c/b/i/f;

    const/4 v2, 0x0

    invoke-direct {v0, p2, v2}, Lc/c/b/i/f;-><init>(Ljava/lang/Class;Lc/c/b/i/e;)V

    const-string p2, "ComponentDiscovery"

    .line 2
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "Context has no PackageManager."

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v0, Lc/c/b/i/f;->a:Ljava/lang/Class;

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lc/c/b/i/f;->a:Ljava/lang/Class;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " has no service info."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v0, v3, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string v0, "Application info not found."

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object v0, v2

    :goto_2
    const-string v3, "com.google.firebase.components.ComponentRegistrar"

    if-nez v0, :cond_2

    const-string v0, "Could not retrieve metadata, returning empty list of registrars."

    .line 3
    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_4

    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "com.google.firebase.components:"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/16 v7, 0x1f

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_4
    move-object v0, v4

    :goto_4
    const-string v4, "Could not instantiate %s"

    const-string v5, "Could not instantiate %s."

    .line 4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :try_start_1
    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lc/c/b/i/h;

    invoke-virtual {v11, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-nez v11, :cond_5

    const-string v10, "Class %s is not an instance of %s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v7, v8, v1

    aput-object v3, v8, v9

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p2, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_5
    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v10, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v10, v1, [Ljava/lang/Object;

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/c/b/i/h;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :catch_2
    move-exception v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-static {v4, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :catch_3
    move-exception v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :catch_4
    move-exception v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v1

    invoke-static {v5, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_6

    :catch_5
    move-exception v8

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v7, v9, v1

    const-string v7, "Class %s is not an found."

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    :goto_6
    invoke-static {p2, v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 5
    :cond_6
    invoke-static {}, Lc/c/a/a/c/l/q;->t()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lc/c/b/i/l;

    sget-object v3, Lc/c/b/b;->i:Ljava/util/concurrent/Executor;

    const/16 v4, 0x8

    new-array v4, v4, [Lc/c/b/i/d;

    const-class v5, Landroid/content/Context;

    new-array v7, v1, [Ljava/lang/Class;

    invoke-static {p1, v5, v7}, Lc/c/b/i/d;->c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lc/c/b/i/d;

    move-result-object p1

    aput-object p1, v4, v1

    const-class p1, Lc/c/b/b;

    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {p0, p1, v5}, Lc/c/b/i/d;->c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lc/c/b/i/d;

    move-result-object p1

    aput-object p1, v4, v9

    const-class p1, Lc/c/b/f;

    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {p3, p1, v5}, Lc/c/b/i/d;->c(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lc/c/b/i/d;

    move-result-object p1

    aput-object p1, v4, v8

    const/4 p1, 0x3

    const-string p3, "fire-android"

    const-string v5, ""

    invoke-static {p3, v5}, Lc/c/a/a/c/l/q;->j(Ljava/lang/String;Ljava/lang/String;)Lc/c/b/i/d;

    move-result-object p3

    aput-object p3, v4, p1

    const/4 p1, 0x4

    const-string p3, "fire-core"

    const-string v5, "19.3.0"

    invoke-static {p3, v5}, Lc/c/a/a/c/l/q;->j(Ljava/lang/String;Ljava/lang/String;)Lc/c/b/i/d;

    move-result-object p3

    aput-object p3, v4, p1

    const/4 p1, 0x5

    if-eqz p2, :cond_7

    const-string p3, "kotlin"

    invoke-static {p3, p2}, Lc/c/a/a/c/l/q;->j(Ljava/lang/String;Ljava/lang/String;)Lc/c/b/i/d;

    move-result-object v2

    :cond_7
    aput-object v2, v4, p1

    const/4 p1, 0x6

    .line 6
    const-class p2, Lc/c/b/n/f;

    invoke-static {p2}, Lc/c/b/i/d;->a(Ljava/lang/Class;)Lc/c/b/i/d$b;

    move-result-object p2

    const-class p3, Lc/c/b/n/e;

    .line 7
    new-instance v2, Lc/c/b/i/p;

    invoke-direct {v2, p3, v8, v1}, Lc/c/b/i/p;-><init>(Ljava/lang/Class;II)V

    .line 8
    invoke-virtual {p2, v2}, Lc/c/b/i/d$b;->a(Lc/c/b/i/p;)Lc/c/b/i/d$b;

    .line 9
    sget-object p3, Lc/c/b/n/b;->a:Lc/c/b/n/b;

    .line 10
    invoke-virtual {p2, p3}, Lc/c/b/i/d$b;->c(Lc/c/b/i/g;)Lc/c/b/i/d$b;

    invoke-virtual {p2}, Lc/c/b/i/d$b;->b()Lc/c/b/i/d;

    move-result-object p2

    aput-object p2, v4, p1

    const/4 p1, 0x7

    .line 11
    const-class p2, Lc/c/b/k/c;

    invoke-static {p2}, Lc/c/b/i/d;->a(Ljava/lang/Class;)Lc/c/b/i/d$b;

    move-result-object p2

    const-class p3, Landroid/content/Context;

    .line 12
    new-instance v2, Lc/c/b/i/p;

    invoke-direct {v2, p3, v9, v1}, Lc/c/b/i/p;-><init>(Ljava/lang/Class;II)V

    .line 13
    invoke-virtual {p2, v2}, Lc/c/b/i/d$b;->a(Lc/c/b/i/p;)Lc/c/b/i/d$b;

    .line 14
    sget-object p3, Lc/c/b/k/a;->a:Lc/c/b/k/a;

    .line 15
    invoke-virtual {p2, p3}, Lc/c/b/i/d$b;->c(Lc/c/b/i/g;)Lc/c/b/i/d$b;

    invoke-virtual {p2}, Lc/c/b/i/d$b;->b()Lc/c/b/i/d;

    move-result-object p2

    aput-object p2, v4, p1

    .line 16
    invoke-direct {v0, v3, v6, v4}, Lc/c/b/i/l;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Iterable;[Lc/c/b/i/d;)V

    iput-object v0, p0, Lc/c/b/b;->d:Lc/c/b/i/l;

    new-instance p1, Lc/c/b/i/u;

    return-void
.end method

.method public static b()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lc/c/b/b;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc/c/b/b;->j:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/b/b;

    .line 1
    invoke-virtual {v3}, Lc/c/b/b;->a()V

    iget-object v3, v3, Lc/c/b/b;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static c()Lc/c/b/b;
    .locals 4

    sget-object v0, Lc/c/b/b;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/c/b/b;->j:Ljava/util/Map;

    const-string v2, "[DEFAULT]"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/b;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Default FirebaseApp is not initialized in this process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lc/c/a/a/c/o/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". Make sure to call FirebaseApp.initializeApp(Context) first."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static d(Ljava/lang/String;)Lc/c/b/b;
    .locals 5

    sget-object v0, Lc/c/b/b;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lc/c/b/b;->j:Ljava/util/Map;

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/c/b/b;

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-static {}, Lc/c/b/b;->b()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v1

    check-cast v2, Ljava/util/ArrayList;

    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Available app names: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    const-string v2, "FirebaseApp with name %s doesn\'t exist. %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 p0, 0x1

    aput-object v1, v3, p0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static g(Landroid/content/Context;Lc/c/b/f;)Lc/c/b/b;
    .locals 4

    .line 1
    invoke-static {p0}, Lc/c/b/b$c;->b(Landroid/content/Context;)V

    const-string v0, "[DEFAULT]"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :goto_0
    sget-object v1, Lc/c/b/b;->h:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lc/c/b/b;->j:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "FirebaseApp name [DEFAULT] already exists!"

    invoke-static {v2, v3}, Lc/c/a/a/c/l/q;->i(ZLjava/lang/Object;)V

    const-string v2, "Application context cannot be null."

    invoke-static {p0, v2}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lc/c/b/b;

    invoke-direct {v2, p0, v0, p1}, Lc/c/b/b;-><init>(Landroid/content/Context;Ljava/lang/String;Lc/c/b/f;)V

    sget-object p0, Lc/c/b/b;->j:Ljava/util/Map;

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Lc/c/b/b;->f()V

    return-object v2

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lc/c/b/b;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "FirebaseApp was deleted"

    invoke-static {v0, v1}, Lc/c/a/a/c/l/q;->i(ZLjava/lang/Object;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1
    invoke-virtual {p0}, Lc/c/b/b;->a()V

    iget-object v1, p0, Lc/c/b/b;->b:Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lc/c/b/b;->a()V

    iget-object v1, p0, Lc/c/b/b;->c:Lc/c/b/f;

    .line 6
    iget-object v1, v1, Lc/c/b/f;->b:Ljava/lang/String;

    .line 7
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-static {v1, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 9
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lc/c/b/b;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lc/c/b/b;->b:Ljava/lang/String;

    check-cast p1, Lc/c/b/b;

    .line 1
    invoke-virtual {p1}, Lc/c/b/b;->a()V

    iget-object p1, p1, Lc/c/b/b;->b:Ljava/lang/String;

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final f()V
    .locals 9

    iget-object v0, p0, Lc/c/b/b;->a:Landroid/content/Context;

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    const/4 v3, 0x1

    if-lt v1, v2, :cond_0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    xor-int/2addr v0, v3

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lc/c/b/b;->a:Landroid/content/Context;

    .line 3
    sget-object v2, Lc/c/b/b$e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_c

    new-instance v2, Lc/c/b/b$e;

    invoke-direct {v2, v0}, Lc/c/b/b$e;-><init>(Landroid/content/Context;)V

    sget-object v3, Lc/c/b/b$e;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_7

    .line 4
    :cond_1
    iget-object v0, p0, Lc/c/b/b;->d:Lc/c/b/i/l;

    .line 5
    invoke-virtual {p0}, Lc/c/b/b;->a()V

    iget-object v2, p0, Lc/c/b/b;->b:Ljava/lang/String;

    const-string v4, "[DEFAULT]"

    .line 6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 7
    iget-object v4, v0, Lc/c/b/i/l;->a:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lc/c/b/i/d;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/c/b/i/u;

    .line 8
    iget v7, v6, Lc/c/b/i/d;->c:I

    const/4 v8, 0x0

    if-ne v7, v3, :cond_3

    const/4 v7, 0x1

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-nez v7, :cond_5

    .line 9
    iget v6, v6, Lc/c/b/i/d;->c:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const/4 v8, 0x1

    :cond_4
    if-eqz v8, :cond_2

    if-eqz v2, :cond_2

    .line 10
    :cond_5
    invoke-virtual {v5}, Lc/c/b/i/u;->a()Ljava/lang/Object;

    goto :goto_1

    :cond_6
    iget-object v0, v0, Lc/c/b/i/l;->d:Lc/c/b/i/t;

    .line 11
    monitor-enter v0

    :try_start_0
    iget-object v2, v0, Lc/c/b/i/t;->b:Ljava/util/Queue;

    if-eqz v2, :cond_7

    iget-object v2, v0, Lc/c/b/i/t;->b:Ljava/util/Queue;

    iput-object v1, v0, Lc/c/b/i/t;->b:Ljava/util/Queue;

    goto :goto_3

    :cond_7
    move-object v2, v1

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v2, :cond_c

    invoke-interface {v2}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/c/b/j/a;

    if-eqz v3, :cond_b

    .line 12
    monitor-enter v0

    :try_start_1
    iget-object v4, v0, Lc/c/b/i/t;->b:Ljava/util/Queue;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lc/c/b/i/t;->b:Ljava/util/Queue;

    invoke-interface {v4, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_4

    :cond_9
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 13
    monitor-enter v0

    :try_start_2
    iget-object v4, v0, Lc/c/b/i/t;->a:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-nez v4, :cond_a

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    goto :goto_5

    :cond_a
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_5
    monitor-exit v0

    .line 14
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/Executor;

    .line 15
    new-instance v7, Lc/c/b/i/s;

    invoke-direct {v7, v5, v3}, Lc/c/b/i/s;-><init>(Ljava/util/Map$Entry;Lc/c/b/j/a;)V

    .line 16
    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_6

    :catchall_0
    move-exception v1

    .line 17
    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v1

    .line 18
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 19
    :cond_b
    throw v1

    :cond_c
    :goto_7
    return-void

    :catchall_2
    move-exception v1

    .line 20
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lc/c/b/b;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, La/a/a/a/a;->B0(Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    move-result-object v0

    iget-object v1, p0, Lc/c/b/b;->b:Ljava/lang/String;

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/l/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    iget-object v1, p0, Lc/c/b/b;->c:Lc/c/b/f;

    const-string v2, "options"

    invoke-virtual {v0, v2, v1}, Lc/c/a/a/c/l/p;->a(Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/a/c/l/p;

    invoke-virtual {v0}, Lc/c/a/a/c/l/p;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
