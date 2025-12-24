.class public final Lc/c/b/h/c0/a/k0;
.super Lc/c/a/a/c/l/g;
.source ""

# interfaces
.implements Lc/c/b/h/c0/a/l0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/c/l/g<",
        "Lc/c/b/h/c0/a/p0;",
        ">;",
        "Lc/c/b/h/c0/a/l0;"
    }
.end annotation


# static fields
.field public static z:Lc/c/a/a/c/m/a;


# instance fields
.field public final x:Landroid/content/Context;

.field public final y:Lc/c/b/h/c0/a/t0;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lc/c/a/a/c/m/a;

    const-string v1, "FirebaseAuth:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, Lc/c/a/a/c/m/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lc/c/b/h/c0/a/k0;->z:Lc/c/a/a/c/m/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/l/c;Lc/c/b/h/c0/a/t0;Lc/c/a/a/c/k/k/c;Lc/c/a/a/c/k/k/h;)V
    .locals 7

    const/16 v3, 0x70

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lc/c/a/a/c/l/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILc/c/a/a/c/l/c;Lc/c/a/a/c/k/k/c;Lc/c/a/a/c/k/k/h;)V

    invoke-static {p1}, Lc/c/a/a/c/l/q;->f(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lc/c/b/h/c0/a/k0;->x:Landroid/content/Context;

    iput-object p4, p0, Lc/c/b/h/c0/a/k0;->y:Lc/c/b/h/c0/a/t0;

    return-void
.end method


# virtual methods
.method public final synthetic a()Lc/c/b/h/c0/a/p0;
    .locals 1

    invoke-super {p0}, Lc/c/a/a/c/l/b;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc/c/b/h/c0/a/p0;

    return-object v0
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lc/c/b/h/c0/a/k0;->x:Landroid/content/Context;

    const-string v1, "com.google.firebase.auth"

    invoke-static {v0, v1}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final o()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public final synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/c/b/h/c0/a/p0;

    if-eqz v1, :cond_1

    check-cast v0, Lc/c/b/h/c0/a/p0;

    return-object v0

    :cond_1
    new-instance v0, Lc/c/b/h/c0/a/q0;

    invoke-direct {v0, p1}, Lc/c/b/h/c0/a/q0;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public final q()[Lc/c/a/a/c/c;
    .locals 1

    sget-object v0, Lc/c/a/a/f/c/r0;->d:[Lc/c/a/a/c/c;

    return-object v0
.end method

.method public final r()Landroid/os/Bundle;
    .locals 12

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-object v1, p0, Lc/c/b/h/c0/a/k0;->y:Lc/c/b/h/c0/a/t0;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, v1, Lc/c/b/h/c0/a/t0;->c:Ljava/lang/String;

    const-string v2, "com.google.firebase.auth.API_KEY"

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    sget-object v1, Lc/c/a/a/c/l/o;->c:Lc/c/a/a/c/l/o;

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    const-string v3, "Failed to get app version for libraryName: "

    const-string v4, "LibraryVersion"

    const-string v5, "firebase-auth"

    const-string v6, "Please provide a valid libraryName"

    .line 6
    invoke-static {v5, v6}, Lc/c/a/a/c/l/q;->e(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    iget-object v6, v1, Lc/c/a/a/c/l/o;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "UNKNOWN"

    if-eqz v6, :cond_1

    iget-object v1, v1, Lc/c/a/a/c/l/o;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    const/4 v8, 0x6

    :try_start_0
    const-string v9, "/%s.properties"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-class v10, Lc/c/a/a/c/l/o;

    invoke-virtual {v10, v9}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v6, v9}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v9, "version"

    invoke-virtual {v6, v9, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v6, Lc/c/a/a/c/l/o;->b:Lc/c/a/a/c/l/i;

    const/16 v9, 0x19

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " version is "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    .line 7
    invoke-virtual {v6, v10}, Lc/c/a/a/c/l/i;->a(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 8
    iget-object v6, v6, Lc/c/a/a/c/l/i;->b:Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 9
    :goto_0
    invoke-static {v4, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 10
    :cond_3
    sget-object v6, Lc/c/a/a/c/l/o;->b:Lc/c/a/a/c/l/i;

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-virtual {v6, v8}, Lc/c/a/a/c/l/i;->a(I)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 12
    iget-object v6, v6, Lc/c/a/a/c/l/i;->b:Ljava/lang/String;

    if-nez v6, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v6, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 13
    :goto_1
    invoke-static {v4, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    .line 14
    sget-object v9, Lc/c/a/a/c/l/o;->b:Lc/c/a/a/c/l/i;

    invoke-virtual {v3, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 15
    invoke-virtual {v9, v8}, Lc/c/a/a/c/l/i;->a(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 16
    iget-object v8, v9, Lc/c/a/a/c/l/i;->b:Ljava/lang/String;

    if-nez v8, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v8, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 17
    :goto_2
    invoke-static {v4, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_3
    if-nez v2, :cond_9

    .line 18
    sget-object v2, Lc/c/a/a/c/l/o;->b:Lc/c/a/a/c/l/i;

    const-string v3, ".properties file is dropped during release process. Failure to read app version isexpected druing Google internal testing where locally-built libraries are used"

    const/4 v6, 0x3

    .line 19
    invoke-virtual {v2, v6}, Lc/c/a/a/c/l/i;->a(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 20
    iget-object v2, v2, Lc/c/a/a/c/l/i;->b:Ljava/lang/String;

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    :goto_4
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move-object v2, v7

    .line 22
    :cond_9
    iget-object v1, v1, Lc/c/a/a/c/l/o;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v5, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v2

    .line 23
    :goto_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_a
    const-string v1, "-1"

    :cond_b
    const-string v2, "com.google.firebase.auth.LIBRARY_VERSION"

    .line 24
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 25
    :cond_c
    throw v2
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.internal.IFirebaseAuthService"

    return-object v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.firebase.auth.api.gms.service.START"

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lc/c/b/h/c0/a/k0;->y:Lc/c/b/h/c0/a/t0;

    iget-boolean v0, v0, Lc/c/b/h/c0/a/b;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lc/c/b/h/c0/a/k0;->z:Lc/c/a/a/c/m/a;

    new-array v1, v1, [Ljava/lang/Object;

    .line 1
    iget-object v2, v0, Lc/c/a/a/c/m/a;->a:Ljava/lang/String;

    const-string v3, "Preparing to create service connection to fallback implementation"

    invoke-virtual {v0, v3, v1}, Lc/c/a/a/c/m/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lc/c/b/h/c0/a/k0;->x:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lc/c/b/h/c0/a/k0;->z:Lc/c/a/a/c/m/a;

    new-array v1, v1, [Ljava/lang/Object;

    .line 3
    iget-object v2, v0, Lc/c/a/a/c/m/a;->a:Ljava/lang/String;

    const-string v3, "Preparing to create service connection to gms implementation"

    invoke-virtual {v0, v3, v1}, Lc/c/a/a/c/m/a;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.google.android.gms"

    return-object v0
.end method
