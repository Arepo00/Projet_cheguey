.class public final Lc/c/b/h/c0/a/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lc/c/b/h/c0/a/c<",
        "Lc/c/b/h/c0/a/t0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final a:Lc/c/b/h/c0/a/t0;

.field public final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lc/c/b/h/c0/a/t0;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/c/b/h/c0/a/j0;->a:Lc/c/b/h/c0/a/t0;

    iput-object p2, p0, Lc/c/b/h/c0/a/j0;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final a(ZLandroid/content/Context;)Lc/c/a/a/c/k/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/content/Context;",
            ")",
            "Lc/c/a/a/c/k/c<",
            "Lc/c/b/h/c0/a/t0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lc/c/b/h/c0/a/j0;->a:Lc/c/b/h/c0/a/t0;

    invoke-virtual {v0}, Lc/c/b/h/c0/a/t0;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/c/b/h/c0/a/t0;

    iput-boolean p1, v0, Lc/c/b/h/c0/a/b;->b:Z

    new-instance p1, Lc/c/b/h/c0/a/d;

    sget-object v1, Lc/c/b/h/c0/a/s0;->c:Lc/c/a/a/c/k/a;

    new-instance v2, Lc/c/b/d;

    invoke-direct {v2}, Lc/c/b/d;-><init>()V

    invoke-direct {p1, p2, v1, v0, v2}, Lc/c/b/h/c0/a/d;-><init>(Landroid/content/Context;Lc/c/a/a/c/k/a;Lc/c/a/a/c/k/a$d;Lc/c/a/a/c/k/k/j;)V

    return-object p1
.end method

.method public final call()Ljava/lang/Object;
    .locals 13

    .line 1
    sget v0, Lc/c/b/h/c0/a/i0;->a:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eq v0, v2, :cond_0

    .line 2
    sget v0, Lc/c/b/h/c0/a/i0;->b:I

    if-ne v0, v2, :cond_b

    .line 3
    :cond_0
    iget-object v0, p0, Lc/c/b/h/c0/a/j0;->b:Landroid/content/Context;

    const-string v2, "com.google.firebase.auth"

    invoke-static {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v9, 0x1

    goto/16 :goto_8

    .line 4
    :cond_1
    sget-object v2, Lc/c/a/a/c/d;->d:Lc/c/a/a/c/d;

    .line 5
    iget-object v5, p0, Lc/c/b/h/c0/a/j0;->b:Landroid/content/Context;

    const v6, 0xbdfcb8

    invoke-virtual {v2, v5, v6}, Lc/c/a/a/c/d;->c(Landroid/content/Context;I)I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v2, p0, Lc/c/b/h/c0/a/j0;->b:Landroid/content/Context;

    const-string v5, "com.google.android.gms.firebase_auth"

    .line 6
    :try_start_0
    const-class v6, Lcom/google/android/gms/dynamite/DynamiteModule;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    sget-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->a:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v7, :cond_8

    :try_start_2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    const-class v8, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const-string v8, "sClassLoader"

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    monitor-enter v7
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/ClassLoader;

    if-eqz v9, :cond_4

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v9, v8, :cond_3

    goto :goto_2

    :cond_3
    :try_start_4
    invoke-static {v9}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_0
    :try_start_5
    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_4
    const-string v9, "com.google.android.gms"

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :catch_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :cond_5
    :try_start_6
    invoke-static {v2, v5, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v9

    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->c:Ljava/lang/String;

    if-eqz v10, :cond_7

    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->c:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_6

    goto :goto_0

    :cond_6
    new-instance v10, Lc/c/a/a/e/b;

    sget-object v11, Lcom/google/android/gms/dynamite/DynamiteModule;->c:Ljava/lang/String;

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lc/c/a/a/e/b;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    invoke-static {v10}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/ClassLoader;)V

    invoke-virtual {v8, v3, v10}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v10, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->a:Ljava/lang/Boolean;
    :try_end_6
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_7
    :goto_0
    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_8

    :goto_1
    :try_start_9
    invoke-virtual {v8, v3, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2
    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_3
    monitor-exit v7

    move-object v7, v8

    goto :goto_5

    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :try_start_a
    throw v8
    :try_end_a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_2
    move-exception v7

    goto :goto_4

    :catch_3
    move-exception v7

    goto :goto_4

    :catch_4
    move-exception v7

    :goto_4
    :try_start_b
    const-string v8, "DynamiteModule"

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x1e

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v9, "Failed to load module via V2: "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_5
    sput-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->a:Ljava/lang/Boolean;

    :cond_8
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    if-eqz v6, :cond_a

    :try_start_d
    invoke-static {v2, v5, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->d(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v9
    :try_end_d
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$a; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_8

    :catch_5
    move-exception v5

    :try_start_e
    const-string v6, "DynamiteModule"

    const-string v7, "Failed to retrieve remote module version: "

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_9
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_6
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    const/4 v9, 0x0

    goto :goto_8

    :cond_a
    invoke-static {v2, v5, v4}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v9
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 7
    :goto_8
    sput v9, Lc/c/b/h/c0/a/i0;->a:I

    .line 8
    sput v0, Lc/c/b/h/c0/a/i0;->b:I

    .line 9
    :cond_b
    sget v0, Lc/c/b/h/c0/a/i0;->b:I

    if-eqz v0, :cond_c

    .line 10
    iget-object v0, p0, Lc/c/b/h/c0/a/j0;->b:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lc/c/b/h/c0/a/j0;->a(ZLandroid/content/Context;)Lc/c/a/a/c/k/c;

    move-result-object v0

    goto :goto_9

    :cond_c
    move-object v0, v3

    .line 11
    :goto_9
    sget v1, Lc/c/b/h/c0/a/i0;->a:I

    if-nez v1, :cond_d

    goto :goto_a

    .line 12
    :cond_d
    iget-object v1, p0, Lc/c/b/h/c0/a/j0;->b:Landroid/content/Context;

    invoke-virtual {p0, v4, v1}, Lc/c/b/h/c0/a/j0;->a(ZLandroid/content/Context;)Lc/c/a/a/c/k/c;

    move-result-object v3

    :goto_a
    new-instance v1, Lc/c/b/h/c0/a/e;

    .line 13
    sget v2, Lc/c/b/h/c0/a/i0;->a:I

    .line 14
    sget v4, Lc/c/b/h/c0/a/i0;->b:I

    .line 15
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    invoke-direct {v1, v2, v4, v5}, Lc/c/b/h/c0/a/e;-><init>(IILjava/util/Map;)V

    new-instance v2, Lc/c/b/h/c0/a/c;

    invoke-direct {v2, v3, v0, v1}, Lc/c/b/h/c0/a/c;-><init>(Lc/c/a/a/c/k/c;Lc/c/a/a/c/k/c;Lc/c/b/h/c0/a/e;)V

    return-object v2

    :catchall_1
    move-exception v0

    .line 16
    :try_start_f
    monitor-exit v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :catchall_2
    move-exception v0

    .line 17
    :try_start_11
    invoke-static {v2}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_6

    goto :goto_b

    :catch_6
    move-exception v1

    const-string v2, "CrashUtils"

    const-string v3, "Error adding exception to DropBox!"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 18
    :goto_b
    throw v0
.end method
