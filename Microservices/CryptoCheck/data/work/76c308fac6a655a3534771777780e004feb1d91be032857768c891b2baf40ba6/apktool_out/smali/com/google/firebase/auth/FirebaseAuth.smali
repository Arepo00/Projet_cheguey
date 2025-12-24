.class public Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/c/b/h/d0/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$d;,
        Lcom/google/firebase/auth/FirebaseAuth$c;,
        Lcom/google/firebase/auth/FirebaseAuth$a;,
        Lcom/google/firebase/auth/FirebaseAuth$b;
    }
.end annotation


# instance fields
.field public a:Lc/c/b/b;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lc/c/b/h/d0/a;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$a;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lc/c/b/h/c0/a/g;

.field public f:Lc/c/b/h/o;

.field public final g:Ljava/lang/Object;

.field public h:Ljava/lang/String;

.field public final i:Lc/c/b/h/d0/p;

.field public final j:Lc/c/b/h/d0/j;

.field public k:Lc/c/b/h/d0/o;

.field public l:Lc/c/b/h/d0/q;


# direct methods
.method public constructor <init>(Lc/c/b/b;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Lc/c/b/b;->a()V

    iget-object v0, p1, Lc/c/b/b;->c:Lc/c/b/f;

    .line 2
    iget-object v0, v0, Lc/c/b/f;->a:Ljava/lang/String;

    .line 3
    invoke-static {v0}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    new-instance v1, Lc/c/b/h/c0/a/t0;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lc/c/b/h/c0/a/t0;-><init>(Ljava/lang/String;Lc/c/b/h/c0/a/r0;)V

    .line 5
    invoke-virtual {p1}, Lc/c/b/b;->a()V

    iget-object v0, p1, Lc/c/b/b;->a:Landroid/content/Context;

    .line 6
    invoke-static {v0, v1}, Lc/c/b/h/c0/a/s0;->a(Landroid/content/Context;Lc/c/b/h/c0/a/t0;)Lc/c/b/h/c0/a/g;

    move-result-object v0

    new-instance v1, Lc/c/b/h/d0/p;

    .line 7
    invoke-virtual {p1}, Lc/c/b/b;->a()V

    iget-object v3, p1, Lc/c/b/b;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {p1}, Lc/c/b/b;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lc/c/b/h/d0/p;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    sget-object v3, Lc/c/b/h/d0/j;->b:Lc/c/b/h/d0/j;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Ljava/lang/Object;

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    invoke-static {v0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    invoke-static {v1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Lc/c/b/h/d0/p;

    invoke-static {v3}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Lc/c/b/h/d0/j;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/List;

    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    .line 11
    sget-object p1, Lc/c/b/h/d0/q;->b:Lc/c/b/h/d0/q;

    .line 12
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lc/c/b/h/d0/q;

    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Lc/c/b/h/d0/p;

    const-string v0, "type"

    .line 13
    iget-object v1, p1, Lc/c/b/h/d0/p;->c:Landroid/content/SharedPreferences;

    const-string v3, "com.google.firebase.auth.FIREBASE_USER"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Lc/c/b/h/d0/p;->a(Lorg/json/JSONObject;)Lc/c/b/h/d0/c0;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_1
    :goto_0
    move-object p1, v2

    .line 14
    :goto_1
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Lc/c/b/h/d0/p;

    if-eqz v3, :cond_3

    .line 15
    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Lc/c/b/h/d0/p;->c:Landroid/content/SharedPreferences;

    new-array v4, v1, [Ljava/lang/Object;

    .line 16
    iget-object p1, p1, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    .line 17
    iget-object p1, p1, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    aput-object p1, v4, v0

    const-string p1, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    .line 18
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-static {p1}, Lc/c/a/a/f/c/a1;->h(Ljava/lang/String;)Lc/c/a/a/f/c/a1;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v2

    :goto_2
    if-eqz p1, :cond_4

    .line 19
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    .line 20
    invoke-virtual {p0, v3, p1, v0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->b(Lc/c/b/h/o;Lc/c/a/a/f/c/a1;ZZ)V

    goto :goto_3

    .line 21
    :cond_3
    throw v2

    .line 22
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Lc/c/b/h/d0/j;

    .line 23
    iget-object p1, p1, Lc/c/b/h/d0/j;->a:Lc/c/b/h/d0/n;

    if-eqz p1, :cond_28

    .line 24
    invoke-static {p0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    .line 26
    invoke-virtual {p1}, Lc/c/b/b;->a()V

    iget-object p1, p1, Lc/c/b/b;->a:Landroid/content/Context;

    const-string v3, "com.google.firebase.auth.internal.ProcessDeathHelper"

    .line 27
    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v3, "firebaseAppName"

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 28
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    .line 29
    invoke-virtual {v4}, Lc/c/b/b;->a()V

    iget-object v4, v4, Lc/c/b/b;->b:Ljava/lang/String;

    .line 30
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto/16 :goto_b

    :cond_5
    const-string v3, "verifyAssertionRequest"

    invoke-interface {p1, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_26

    const-string v3, "verifyAssertionRequest"

    const-string v6, ""

    invoke-interface {p1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v6, Lc/c/a/a/f/c/n1;->CREATOR:Landroid/os/Parcelable$Creator;

    if-nez v3, :cond_6

    move-object v3, v2

    goto :goto_4

    :cond_6
    const/16 v7, 0xa

    .line 31
    invoke-static {v3, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    .line 32
    :goto_4
    invoke-static {v3, v6}, Lc/c/a/a/c/l/q;->s([BLandroid/os/Parcelable$Creator;)Lc/c/a/a/c/l/u/c;

    move-result-object v3

    .line 33
    check-cast v3, Lc/c/a/a/f/c/n1;

    const-string v6, "operation"

    const-string v7, ""

    invoke-interface {p1, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "tenantId"

    invoke-interface {p1, v7, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "firebaseUserUid"

    const-string v9, ""

    invoke-interface {p1, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "timestamp"

    invoke-interface {p1, v9, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    if-eqz v7, :cond_7

    .line 34
    invoke-static {v7}, Lc/c/a/a/c/l/q;->d(Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iput-object v7, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/String;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 35
    iput-object v7, v3, Lc/c/a/a/f/c/n1;->o:Ljava/lang/String;

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 36
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 37
    :cond_7
    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x6de69c8e

    const/4 v7, 0x2

    if-eq v4, v5, :cond_a

    const v5, -0x11179c9c

    if-eq v4, v5, :cond_9

    const v5, 0x6731f73d

    if-eq v4, v5, :cond_8

    goto :goto_6

    :cond_8
    const-string v4, "com.google.firebase.auth.internal.SIGN_IN"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    goto :goto_7

    :cond_9
    const-string v0, "com.google.firebase.auth.internal.LINK"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_7

    :cond_a
    const-string v0, "com.google.firebase.auth.internal.REAUTHENTICATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x2

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v0, -0x1

    :goto_7
    const/16 v4, 0x42b0

    if-eqz v0, :cond_1c

    if-eq v0, v1, :cond_16

    if-eq v0, v7, :cond_c

    goto/16 :goto_a

    .line 38
    :cond_c
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    .line 39
    check-cast v0, Lc/c/b/h/d0/c0;

    .line 40
    iget-object v0, v0, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    .line 41
    iget-object v0, v0, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 43
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    .line 44
    invoke-static {v3}, Lc/c/b/h/g0;->i(Lc/c/a/a/f/c/n1;)Lc/c/b/h/g0;

    move-result-object v1

    .line 45
    invoke-static {v0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lc/c/b/h/b;->h()Lc/c/b/h/b;

    move-result-object v1

    instance-of v3, v1, Lc/c/b/h/c;

    if-eqz v3, :cond_12

    check-cast v1, Lc/c/b/h/c;

    .line 46
    iget-object v3, v1, Lc/c/b/h/c;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "password"

    if-nez v3, :cond_d

    move-object v3, v5

    goto :goto_8

    :cond_d
    const-string v3, "emailLink"

    .line 47
    :goto_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    .line 48
    iget-object v5, v1, Lc/c/b/h/c;->b:Ljava/lang/String;

    .line 49
    iget-object v1, v1, Lc/c/b/h/c;->c:Ljava/lang/String;

    .line 50
    invoke-virtual {v0}, Lc/c/b/h/o;->h()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/firebase/auth/FirebaseAuth$d;

    invoke-direct {v7, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    if-eqz v3, :cond_e

    .line 51
    new-instance v2, Lc/c/b/h/c0/a/w;

    invoke-direct {v2, v5, v1, v6}, Lc/c/b/h/c0/a/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lc/c/b/h/c0/a/u0;->c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v0}, Lc/c/b/h/c0/a/u0;->d(Lc/c/b/h/o;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v7}, Lc/c/b/h/c0/a/u0;->f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v7}, Lc/c/b/h/c0/a/u0;->e(Lc/c/b/h/d0/f;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v3, v2}, Lc/c/b/h/c0/a/a;->d(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lc/c/b/h/c0/a/g;->e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    goto/16 :goto_a

    :cond_e
    throw v2

    .line 52
    :cond_f
    iget-object v3, v1, Lc/c/b/h/c;->d:Ljava/lang/String;

    .line 53
    invoke-virtual {p0, v3}, Lcom/google/firebase/auth/FirebaseAuth;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 54
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 55
    invoke-static {v0}, Lc/c/b/h/c0/a/m0;->a(Lcom/google/android/gms/common/api/Status;)Lc/c/b/c;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/a/c/l/q;->w(Ljava/lang/Exception;)Lc/c/a/a/h/d;

    goto/16 :goto_a

    :cond_10
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$d;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    if-eqz v3, :cond_11

    .line 56
    new-instance v2, Lc/c/b/h/c0/a/u;

    invoke-direct {v2, v1}, Lc/c/b/h/c0/a/u;-><init>(Lc/c/b/h/c;)V

    invoke-virtual {v2, v4}, Lc/c/b/h/c0/a/u0;->c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v0}, Lc/c/b/h/c0/a/u0;->d(Lc/c/b/h/o;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v5}, Lc/c/b/h/c0/a/u0;->f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v5}, Lc/c/b/h/c0/a/u0;->e(Lc/c/b/h/d0/f;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v3, v2}, Lc/c/b/h/c0/a/a;->d(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lc/c/b/h/c0/a/g;->e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    goto/16 :goto_a

    :cond_11
    throw v2

    .line 57
    :cond_12
    instance-of v3, v1, Lc/c/b/h/w;

    if-eqz v3, :cond_14

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    check-cast v1, Lc/c/b/h/w;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/String;

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$d;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    if-eqz v3, :cond_13

    .line 58
    new-instance v2, Lc/c/b/h/c0/a/y;

    invoke-direct {v2, v1, v5}, Lc/c/b/h/c0/a/y;-><init>(Lc/c/b/h/w;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lc/c/b/h/c0/a/u0;->c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v0}, Lc/c/b/h/c0/a/u0;->d(Lc/c/b/h/o;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v6}, Lc/c/b/h/c0/a/u0;->f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v6}, Lc/c/b/h/c0/a/u0;->e(Lc/c/b/h/d0/f;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v3, v2}, Lc/c/b/h/c0/a/a;->d(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lc/c/b/h/c0/a/g;->e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    goto/16 :goto_a

    :cond_13
    throw v2

    .line 59
    :cond_14
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    invoke-virtual {v0}, Lc/c/b/h/o;->h()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$d;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    if-eqz v3, :cond_15

    .line 60
    new-instance v2, Lc/c/b/h/c0/a/s;

    invoke-direct {v2, v1, v5}, Lc/c/b/h/c0/a/s;-><init>(Lc/c/b/h/b;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lc/c/b/h/c0/a/u0;->c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v0}, Lc/c/b/h/c0/a/u0;->d(Lc/c/b/h/o;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v6}, Lc/c/b/h/c0/a/u0;->f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v6}, Lc/c/b/h/c0/a/u0;->e(Lc/c/b/h/d0/f;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v3, v2}, Lc/c/b/h/c0/a/a;->d(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v0

    invoke-virtual {v3, v0, v2}, Lc/c/b/h/c0/a/g;->e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    goto/16 :goto_a

    :cond_15
    throw v2

    .line 61
    :cond_16
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    .line 62
    check-cast v0, Lc/c/b/h/d0/c0;

    .line 63
    iget-object v0, v0, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    .line 64
    iget-object v0, v0, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    .line 65
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 66
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    .line 67
    invoke-static {v3}, Lc/c/b/h/g0;->i(Lc/c/a/a/f/c/n1;)Lc/c/b/h/g0;

    move-result-object v3

    .line 68
    invoke-static {v3}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    invoke-virtual {v3}, Lc/c/b/h/b;->h()Lc/c/b/h/b;

    move-result-object v3

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$d;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    if-eqz v4, :cond_1b

    .line 69
    invoke-static {v5}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Lc/c/b/h/d0/c0;

    .line 70
    iget-object v7, v7, Lc/c/b/h/d0/c0;->g:Ljava/util/List;

    if-eqz v7, :cond_17

    .line 71
    move-object v8, v3

    check-cast v8, Lc/c/b/h/g0;

    .line 72
    iget-object v8, v8, Lc/c/b/h/g0;->b:Ljava/lang/String;

    .line 73
    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_17

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4277

    .line 74
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 75
    invoke-static {v0}, Lc/c/b/h/c0/a/m0;->a(Lcom/google/android/gms/common/api/Status;)Lc/c/b/c;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/a/c/l/q;->w(Ljava/lang/Exception;)Lc/c/a/a/h/d;

    goto/16 :goto_a

    :cond_17
    instance-of v2, v3, Lc/c/b/h/c;

    if-eqz v2, :cond_19

    check-cast v3, Lc/c/b/h/c;

    .line 76
    iget-object v2, v3, Lc/c/b/h/c;->d:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    xor-int/2addr v1, v2

    if-nez v1, :cond_18

    .line 77
    new-instance v1, Lc/c/b/h/c0/a/j;

    invoke-direct {v1, v3}, Lc/c/b/h/c0/a/j;-><init>(Lc/c/b/h/c;)V

    goto :goto_9

    :cond_18
    new-instance v1, Lc/c/b/h/c0/a/p;

    invoke-direct {v1, v3}, Lc/c/b/h/c0/a/p;-><init>(Lc/c/b/h/c;)V

    goto :goto_9

    :cond_19
    instance-of v1, v3, Lc/c/b/h/w;

    if-eqz v1, :cond_1a

    check-cast v3, Lc/c/b/h/w;

    new-instance v1, Lc/c/b/h/c0/a/n;

    invoke-direct {v1, v3}, Lc/c/b/h/c0/a/n;-><init>(Lc/c/b/h/w;)V

    goto :goto_9

    :cond_1a
    invoke-static {v5}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lc/c/b/h/c0/a/l;

    invoke-direct {v1, v3}, Lc/c/b/h/c0/a/l;-><init>(Lc/c/b/h/b;)V

    :goto_9
    invoke-virtual {v1, v5}, Lc/c/b/h/c0/a/u0;->c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v1, v0}, Lc/c/b/h/c0/a/u0;->d(Lc/c/b/h/o;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v1, v6}, Lc/c/b/h/c0/a/u0;->f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v1, v6}, Lc/c/b/h/c0/a/u0;->e(Lc/c/b/h/d0/f;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v4, v1}, Lc/c/b/h/c0/a/a;->d(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Lc/c/b/h/c0/a/g;->e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    goto/16 :goto_a

    :cond_1b
    throw v2

    .line 78
    :cond_1c
    invoke-static {v3}, Lc/c/b/h/g0;->i(Lc/c/a/a/f/c/n1;)Lc/c/b/h/g0;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lc/c/b/h/b;->h()Lc/c/b/h/b;

    move-result-object v0

    instance-of v3, v0, Lc/c/b/h/c;

    if-eqz v3, :cond_21

    check-cast v0, Lc/c/b/h/c;

    .line 80
    iget-object v3, v0, Lc/c/b/h/c;->d:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v1, v3

    if-nez v1, :cond_1e

    .line 81
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    .line 82
    iget-object v4, v0, Lc/c/b/h/c;->b:Ljava/lang/String;

    .line 83
    iget-object v0, v0, Lc/c/b/h/c;->c:Ljava/lang/String;

    .line 84
    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/String;

    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$c;

    invoke-direct {v6, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    if-eqz v1, :cond_1d

    .line 85
    new-instance v2, Lc/c/b/h/c0/a/c0;

    invoke-direct {v2, v4, v0, v5}, Lc/c/b/h/c0/a/c0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lc/c/b/h/c0/a/u0;->c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v6}, Lc/c/b/h/c0/a/u0;->f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v1, v2}, Lc/c/b/h/c0/a/a;->d(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lc/c/b/h/c0/a/g;->e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    goto/16 :goto_a

    :cond_1d
    throw v2

    .line 86
    :cond_1e
    iget-object v1, v0, Lc/c/b/h/c;->d:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    .line 88
    invoke-direct {v0, v4, v2}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 89
    invoke-static {v0}, Lc/c/b/h/c0/a/m0;->a(Lcom/google/android/gms/common/api/Status;)Lc/c/b/c;

    move-result-object v0

    invoke-static {v0}, Lc/c/a/a/c/l/q;->w(Ljava/lang/Exception;)Lc/c/a/a/h/d;

    goto :goto_a

    :cond_1f
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    new-instance v4, Lcom/google/firebase/auth/FirebaseAuth$c;

    invoke-direct {v4, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    if-eqz v1, :cond_20

    .line 90
    new-instance v2, Lc/c/b/h/c0/a/d0;

    invoke-direct {v2, v0}, Lc/c/b/h/c0/a/d0;-><init>(Lc/c/b/h/c;)V

    invoke-virtual {v2, v3}, Lc/c/b/h/c0/a/u0;->c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v4}, Lc/c/b/h/c0/a/u0;->f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v1, v2}, Lc/c/b/h/c0/a/a;->d(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lc/c/b/h/c0/a/g;->e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    goto :goto_a

    :cond_20
    throw v2

    .line 91
    :cond_21
    instance-of v1, v0, Lc/c/b/h/w;

    if-eqz v1, :cond_23

    check-cast v0, Lc/c/b/h/w;

    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/String;

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$c;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    if-eqz v1, :cond_22

    .line 92
    new-instance v2, Lc/c/b/h/c0/a/f0;

    invoke-direct {v2, v0, v4}, Lc/c/b/h/c0/a/f0;-><init>(Lc/c/b/h/w;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lc/c/b/h/c0/a/u0;->c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v5}, Lc/c/b/h/c0/a/u0;->f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v1, v2}, Lc/c/b/h/c0/a/a;->d(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lc/c/b/h/c0/a/g;->e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    goto :goto_a

    :cond_22
    throw v2

    .line 93
    :cond_23
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lc/c/b/h/c0/a/g;

    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/String;

    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$c;

    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    if-eqz v1, :cond_25

    .line 94
    new-instance v2, Lc/c/b/h/c0/a/a0;

    invoke-direct {v2, v0, v4}, Lc/c/b/h/c0/a/a0;-><init>(Lc/c/b/h/b;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lc/c/b/h/c0/a/u0;->c(Lc/c/b/b;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v2, v5}, Lc/c/b/h/c0/a/u0;->f(Ljava/lang/Object;)Lc/c/b/h/c0/a/u0;

    invoke-virtual {v1, v2}, Lc/c/b/h/c0/a/a;->d(Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Lc/c/b/h/c0/a/g;->e(Lc/c/a/a/h/d;Lc/c/b/h/c0/a/f;)Lc/c/a/a/h/d;

    .line 95
    :cond_24
    :goto_a
    invoke-static {p1}, Lc/c/b/h/d0/n;->c(Landroid/content/SharedPreferences;)V

    goto :goto_b

    .line 96
    :cond_25
    throw v2

    :cond_26
    const-string v0, "statusCode"

    .line 97
    invoke-interface {p1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    const-string v0, "statusCode"

    const/16 v1, 0x42a6

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "statusMessage"

    const-string v2, ""

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    const-string v0, "timestamp"

    invoke-interface {p1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    invoke-static {p1}, Lc/c/b/h/d0/n;->c(Landroid/content/SharedPreferences;)V

    invoke-static {v2}, Lc/c/b/h/c0/a/m0;->a(Lcom/google/android/gms/common/api/Status;)Lc/c/b/c;

    move-result-object p1

    invoke-static {p1}, Lc/c/a/a/c/l/q;->w(Ljava/lang/Exception;)Lc/c/a/a/h/d;

    :cond_27
    :goto_b
    return-void

    :cond_28
    throw v2
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-static {}, Lc/c/b/b;->c()Lc/c/b/b;

    move-result-object v0

    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    .line 1
    invoke-virtual {v0}, Lc/c/b/b;->a()V

    iget-object v0, v0, Lc/c/b/b;->d:Lc/c/b/i/l;

    invoke-virtual {v0, v1}, Lc/c/b/i/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public static getInstance(Lc/c/b/b;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-class v0, Lcom/google/firebase/auth/FirebaseAuth;

    .line 3
    invoke-virtual {p0}, Lc/c/b/b;->a()V

    iget-object p0, p0, Lc/c/b/b;->d:Lc/c/b/i/l;

    invoke-virtual {p0, v0}, Lc/c/b/i/a;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .line 4
    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Lc/c/b/h/d0/p;

    invoke-static {v0}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    check-cast v0, Lc/c/b/h/d0/c0;

    .line 2
    iget-object v0, v0, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    .line 3
    iget-object v0, v0, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    aput-object v0, v3, v4

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    .line 4
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iget-object v2, v2, Lc/c/b/h/d0/p;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 6
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Lc/c/b/h/d0/p;

    .line 7
    iget-object v0, v0, Lc/c/b/h/d0/p;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "com.google.firebase.auth.FIREBASE_USER"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 8
    invoke-virtual {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->d(Lc/c/b/h/o;)V

    invoke-virtual {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->e(Lc/c/b/h/o;)V

    .line 9
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Lc/c/b/h/d0/o;

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, v0, Lc/c/b/h/d0/o;->b:Lc/c/b/h/d0/c;

    .line 11
    iget-object v1, v0, Lc/c/b/h/d0/c;->f:Landroid/os/Handler;

    iget-object v0, v0, Lc/c/b/h/d0/c;->g:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final b(Lc/c/b/h/o;Lc/c/a/a/f/c/a1;ZZ)V
    .locals 15

    move-object v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    invoke-static/range {p1 .. p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    move-object v6, v0

    check-cast v6, Lc/c/b/h/d0/c0;

    .line 1
    iget-object v6, v6, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    .line 2
    iget-object v6, v6, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    .line 3
    check-cast v3, Lc/c/b/h/d0/c0;

    .line 4
    iget-object v3, v3, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    .line 5
    iget-object v3, v3, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_1

    if-eqz p4, :cond_1

    return-void

    :cond_1
    iget-object v6, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    if-nez v6, :cond_2

    const/4 v3, 0x1

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    check-cast v6, Lc/c/b/h/d0/c0;

    .line 7
    iget-object v6, v6, Lc/c/b/h/d0/c0;->b:Lc/c/a/a/f/c/a1;

    .line 8
    iget-object v6, v6, Lc/c/a/a/f/c/a1;->c:Ljava/lang/String;

    iget-object v7, v2, Lc/c/a/a/f/c/a1;->c:Ljava/lang/String;

    .line 9
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-eqz v3, :cond_3

    if-nez v6, :cond_3

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x1

    :goto_1
    if-nez v3, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static/range {p1 .. p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    if-nez v7, :cond_5

    iput-object v0, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    goto :goto_4

    :cond_5
    move-object v8, v0

    check-cast v8, Lc/c/b/h/d0/c0;

    .line 10
    iget-object v9, v8, Lc/c/b/h/d0/c0;->f:Ljava/util/List;

    .line 11
    invoke-virtual {v7, v9}, Lc/c/b/h/o;->j(Ljava/util/List;)Lc/c/b/h/o;

    invoke-virtual/range {p1 .. p1}, Lc/c/b/h/o;->i()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    check-cast v7, Lc/c/b/h/d0/c0;

    .line 12
    sget-object v9, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v9, v7, Lc/c/b/h/d0/c0;->i:Ljava/lang/Boolean;

    .line 13
    :cond_6
    invoke-static {v8}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v7, v8, Lc/c/b/h/d0/c0;->m:Lc/c/b/h/d0/m;

    if-eqz v7, :cond_7

    .line 15
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, v7, Lc/c/b/h/d0/m;->b:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/c/b/h/y;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 16
    :cond_7
    invoke-static {}, Lc/c/a/a/f/c/n;->h()Lc/c/a/a/f/c/n;

    move-result-object v8

    .line 17
    :cond_8
    iget-object v7, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    invoke-virtual {v7, v8}, Lc/c/b/h/o;->l(Ljava/util/List;)V

    :goto_4
    if-eqz p3, :cond_13

    iget-object v8, v1, Lcom/google/firebase/auth/FirebaseAuth;->i:Lc/c/b/h/d0/p;

    iget-object v9, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    if-eqz v8, :cond_12

    .line 18
    invoke-static {v9}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    const-class v11, Lc/c/b/h/d0/c0;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v11

    if-eqz v11, :cond_11

    check-cast v9, Lc/c/b/h/d0/c0;

    :try_start_0
    const-string v11, "cachedTokenState"

    invoke-virtual {v9}, Lc/c/b/h/d0/c0;->m()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "applicationName"

    .line 20
    iget-object v12, v9, Lc/c/b/h/d0/c0;->d:Ljava/lang/String;

    invoke-static {v12}, Lc/c/b/b;->d(Ljava/lang/String;)Lc/c/b/b;

    move-result-object v12

    .line 21
    invoke-virtual {v12}, Lc/c/b/b;->a()V

    iget-object v12, v12, Lc/c/b/b;->b:Ljava/lang/String;

    .line 22
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v11, "type"

    const-string v12, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object v11, v9, Lc/c/b/h/d0/c0;->f:Ljava/util/List;

    if-eqz v11, :cond_a

    .line 24
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 25
    iget-object v12, v9, Lc/c/b/h/d0/c0;->f:Ljava/util/List;

    const/4 v13, 0x0

    .line 26
    :goto_5
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_9

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc/c/b/h/d0/z;

    invoke-virtual {v14}, Lc/c/b/h/d0/z;->i()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_9
    const-string v12, "userInfos"

    invoke-virtual {v10, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string v11, "anonymous"

    invoke-virtual {v9}, Lc/c/b/h/d0/c0;->i()Z

    move-result v12

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v11, "version"

    const-string v12, "2"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    iget-object v11, v9, Lc/c/b/h/d0/c0;->j:Lc/c/b/h/d0/e0;

    if-eqz v11, :cond_c

    const-string v11, "userMetadata"

    iget-object v12, v9, Lc/c/b/h/d0/c0;->j:Lc/c/b/h/d0/e0;

    if-eqz v12, :cond_b

    .line 28
    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    const-string v14, "lastSignInTimestamp"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move/from16 p4, v6

    :try_start_2
    iget-wide v5, v12, Lc/c/b/h/d0/e0;->b:J

    invoke-virtual {v13, v14, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v5, "creationTimestamp"
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-object v14, v8

    :try_start_3
    iget-wide v7, v12, Lc/c/b/h/d0/e0;->c:J

    invoke-virtual {v13, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_0
    move/from16 p4, v6

    :catch_1
    move-object v14, v8

    .line 29
    :catch_2
    :goto_6
    :try_start_4
    invoke-virtual {v10, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_7

    :cond_b
    move-object v14, v8

    const/4 v0, 0x0

    .line 30
    throw v0

    :cond_c
    move/from16 p4, v6

    move-object v14, v8

    .line 31
    :goto_7
    invoke-static {v9}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-object v5, v9, Lc/c/b/h/d0/c0;->m:Lc/c/b/h/d0/m;

    if-eqz v5, :cond_d

    .line 33
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v5, Lc/c/b/h/d0/m;->b:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lc/c/b/h/y;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 34
    :cond_d
    invoke-static {}, Lc/c/a/a/f/c/n;->h()Lc/c/a/a/f/c/n;

    move-result-object v7

    :cond_e
    if-eqz v7, :cond_10

    .line 35
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_10

    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    const/4 v8, 0x0

    :goto_9
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_f

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lc/c/b/h/s;

    invoke-virtual {v9}, Lc/c/b/h/s;->h()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_f
    const-string v7, "userMultiFactorInfo"

    invoke-virtual {v10, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-object v7, v5

    move-object v5, v14

    goto :goto_b

    :catch_3
    move-exception v0

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v14, v8

    :goto_a
    move-object v5, v14

    iget-object v2, v5, Lc/c/b/h/d0/p;->d:Lc/c/a/a/c/m/a;

    new-array v3, v4, [Ljava/lang/Object;

    .line 36
    iget-object v4, v2, Lc/c/a/a/c/m/a;->a:Ljava/lang/String;

    const-string v5, "Failed to turn object into JSON"

    invoke-virtual {v2, v5, v3}, Lc/c/a/a/c/m/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    new-instance v2, Lc/c/b/h/c0/b;

    invoke-direct {v2, v0}, Lc/c/b/h/c0/b;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_11
    move/from16 p4, v6

    move-object v5, v8

    const/4 v7, 0x0

    .line 38
    :goto_b
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_14

    iget-object v5, v5, Lc/c/b/h/d0/p;->c:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v8, "com.google.firebase.auth.FIREBASE_USER"

    invoke-interface {v5, v8, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_c

    :cond_12
    const/4 v5, 0x0

    throw v5

    :cond_13
    move/from16 p4, v6

    :cond_14
    :goto_c
    if-eqz p4, :cond_16

    .line 39
    iget-object v5, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    if-eqz v5, :cond_15

    invoke-virtual {v5, v2}, Lc/c/b/h/o;->k(Lc/c/a/a/f/c/a1;)V

    :cond_15
    iget-object v5, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    invoke-virtual {p0, v5}, Lcom/google/firebase/auth/FirebaseAuth;->d(Lc/c/b/h/o;)V

    :cond_16
    if-eqz v3, :cond_17

    iget-object v3, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    invoke-virtual {p0, v3}, Lcom/google/firebase/auth/FirebaseAuth;->e(Lc/c/b/h/o;)V

    :cond_17
    if-eqz p3, :cond_19

    iget-object v3, v1, Lcom/google/firebase/auth/FirebaseAuth;->i:Lc/c/b/h/d0/p;

    if-eqz v3, :cond_18

    .line 40
    invoke-static/range {p1 .. p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v3, Lc/c/b/h/d0/p;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Object;

    check-cast v0, Lc/c/b/h/d0/c0;

    .line 41
    iget-object v0, v0, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    .line 42
    iget-object v0, v0, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    aput-object v0, v7, v4

    const-string v0, "com.google.firebase.auth.GET_TOKEN_RESPONSE.%s"

    .line 43
    invoke-static {v0, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Lc/c/a/a/f/c/a1;->i()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_d

    :cond_18
    const/4 v0, 0x0

    throw v0

    :cond_19
    const/4 v5, 0x1

    .line 44
    :goto_d
    monitor-enter p0

    :try_start_5
    iget-object v0, v1, Lcom/google/firebase/auth/FirebaseAuth;->k:Lc/c/b/h/d0/o;

    if-nez v0, :cond_1a

    new-instance v0, Lc/c/b/h/d0/o;

    iget-object v2, v1, Lcom/google/firebase/auth/FirebaseAuth;->a:Lc/c/b/b;

    invoke-direct {v0, v2}, Lc/c/b/h/d0/o;-><init>(Lc/c/b/b;)V

    .line 45
    monitor-enter p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iput-object v0, v1, Lcom/google/firebase/auth/FirebaseAuth;->k:Lc/c/b/h/d0/o;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit p0

    goto :goto_e

    :catchall_0
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2

    .line 46
    :cond_1a
    :goto_e
    iget-object v0, v1, Lcom/google/firebase/auth/FirebaseAuth;->k:Lc/c/b/h/d0/o;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    monitor-exit p0

    .line 47
    iget-object v2, v1, Lcom/google/firebase/auth/FirebaseAuth;->f:Lc/c/b/h/o;

    check-cast v2, Lc/c/b/h/d0/c0;

    .line 48
    iget-object v2, v2, Lc/c/b/h/d0/c0;->b:Lc/c/a/a/f/c/a1;

    if-eqz v0, :cond_20

    if-nez v2, :cond_1b

    goto :goto_10

    .line 49
    :cond_1b
    iget-object v3, v2, Lc/c/a/a/f/c/a1;->d:Ljava/lang/Long;

    const-wide/16 v6, 0x0

    if-nez v3, :cond_1c

    move-wide v8, v6

    goto :goto_f

    :cond_1c
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_f
    cmp-long v3, v8, v6

    if-gtz v3, :cond_1d

    const-wide/16 v8, 0xe10

    .line 50
    :cond_1d
    iget-object v2, v2, Lc/c/a/a/f/c/a1;->f:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x3e8

    mul-long v8, v8, v6

    add-long/2addr v8, v2

    .line 51
    iget-object v2, v0, Lc/c/b/h/d0/o;->b:Lc/c/b/h/d0/c;

    iput-wide v8, v2, Lc/c/b/h/d0/c;->b:J

    const-wide/16 v6, -0x1

    iput-wide v6, v2, Lc/c/b/h/d0/c;->c:J

    .line 52
    iget v2, v0, Lc/c/b/h/d0/o;->a:I

    if-lez v2, :cond_1e

    iget-boolean v2, v0, Lc/c/b/h/d0/o;->c:Z

    if-nez v2, :cond_1e

    const/4 v4, 0x1

    :cond_1e
    if-eqz v4, :cond_1f

    .line 53
    iget-object v0, v0, Lc/c/b/h/d0/o;->b:Lc/c/b/h/d0/c;

    invoke-virtual {v0}, Lc/c/b/h/d0/c;->a()V

    :cond_1f
    :goto_10
    return-void

    :cond_20
    const/4 v0, 0x0

    throw v0

    :catchall_1
    move-exception v0

    .line 54
    monitor-exit p0

    throw v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lc/c/b/h/a;->a(Ljava/lang/String;)Lc/c/b/h/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/String;

    .line 1
    iget-object p1, p1, Lc/c/b/h/a;->d:Ljava/lang/String;

    .line 2
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lc/c/b/h/o;)V
    .locals 4

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    move-object v1, p1

    check-cast v1, Lc/c/b/h/d0/c0;

    .line 1
    iget-object v1, v1, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    .line 2
    iget-object v1, v1, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Notifying id token listeners about user ( "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " )."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "Notifying id token listeners about a sign-out event."

    :goto_0
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    check-cast p1, Lc/c/b/h/d0/c0;

    .line 4
    iget-object p1, p1, Lc/c/b/h/d0/c0;->b:Lc/c/a/a/f/c/a1;

    .line 5
    iget-object p1, p1, Lc/c/a/a/f/c/a1;->c:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 6
    :goto_1
    new-instance v0, Lc/c/b/m/a;

    invoke-direct {v0, p1}, Lc/c/b/m/a;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lc/c/b/h/d0/q;

    new-instance v1, Lc/c/b/h/k0;

    invoke-direct {v1, p0, v0}, Lc/c/b/h/k0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lc/c/b/m/a;)V

    .line 7
    iget-object p1, p1, Lc/c/b/h/d0/q;->a:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final e(Lc/c/b/h/o;)V
    .locals 3

    const-string v0, "FirebaseAuth"

    if-eqz p1, :cond_0

    check-cast p1, Lc/c/b/h/d0/c0;

    .line 1
    iget-object p1, p1, Lc/c/b/h/d0/c0;->c:Lc/c/b/h/d0/z;

    .line 2
    iget-object p1, p1, Lc/c/b/h/d0/z;->b:Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Notifying auth state listeners about user ( "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " )."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Notifying auth state listeners about a sign-out event."

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lc/c/b/h/d0/q;

    new-instance v0, Lc/c/b/h/j0;

    invoke-direct {v0, p0}, Lc/c/b/h/j0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 4
    iget-object p1, p1, Lc/c/b/h/d0/q;->a:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
