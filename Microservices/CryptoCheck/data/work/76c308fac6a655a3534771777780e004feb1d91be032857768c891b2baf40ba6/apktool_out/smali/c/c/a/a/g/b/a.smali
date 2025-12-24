.class public Lc/c/a/a/g/b/a;
.super Lc/c/a/a/c/l/g;
.source ""

# interfaces
.implements Lc/c/a/a/g/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/c/l/g<",
        "Lc/c/a/a/g/b/f;",
        ">;",
        "Lc/c/a/a/g/e;"
    }
.end annotation


# instance fields
.field public A:Ljava/lang/Integer;

.field public final x:Z

.field public final y:Lc/c/a/a/c/l/c;

.field public final z:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lc/c/a/a/c/l/c;Lc/c/a/a/c/k/d;Lc/c/a/a/c/k/e;)V
    .locals 11

    move-object v7, p0

    move-object v8, p3

    .line 1
    iget-object v0, v8, Lc/c/a/a/c/l/c;->g:Lc/c/a/a/g/a;

    .line 2
    iget-object v1, v8, Lc/c/a/a/c/l/c;->h:Ljava/lang/Integer;

    .line 3
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 4
    iget-object v2, v8, Lc/c/a/a/c/l/c;->a:Landroid/accounts/Account;

    const-string v3, "com.google.android.gms.signin.internal.clientRequestedAccount"

    .line 5
    invoke-virtual {v9, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    const/4 v10, 0x1

    if-eqz v0, :cond_2

    .line 6
    iget-boolean v1, v0, Lc/c/a/a/g/a;->b:Z

    const-string v2, "com.google.android.gms.signin.internal.offlineAccessRequested"

    .line 7
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    iget-boolean v1, v0, Lc/c/a/a/g/a;->c:Z

    const-string v2, "com.google.android.gms.signin.internal.idTokenRequested"

    .line 9
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 10
    iget-object v1, v0, Lc/c/a/a/g/a;->d:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.serverClientId"

    .line 11
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    invoke-virtual {v9, v1, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    iget-boolean v1, v0, Lc/c/a/a/g/a;->e:Z

    const-string v2, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 13
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 14
    iget-object v1, v0, Lc/c/a/a/g/a;->f:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.hostedDomain"

    .line 15
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v1, v0, Lc/c/a/a/g/a;->g:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.logSessionId"

    .line 17
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-boolean v1, v0, Lc/c/a/a/g/a;->h:Z

    const-string v2, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 19
    invoke-virtual {v9, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 20
    iget-object v1, v0, Lc/c/a/a/g/a;->i:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string v3, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    invoke-virtual {v9, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 22
    :cond_1
    iget-object v0, v0, Lc/c/a/a/g/a;->j:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 23
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    invoke-virtual {v9, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    .line 24
    invoke-direct/range {v0 .. v6}, Lc/c/a/a/c/l/g;-><init>(Landroid/content/Context;Landroid/os/Looper;ILc/c/a/a/c/l/c;Lc/c/a/a/c/k/k/c;Lc/c/a/a/c/k/k/h;)V

    .line 25
    iput-boolean v10, v7, Lc/c/a/a/g/b/a;->x:Z

    iput-object v8, v7, Lc/c/a/a/g/b/a;->y:Lc/c/a/a/c/l/c;

    iput-object v9, v7, Lc/c/a/a/g/b/a;->z:Landroid/os/Bundle;

    .line 26
    iget-object v0, v8, Lc/c/a/a/c/l/c;->h:Ljava/lang/Integer;

    .line 27
    iput-object v0, v7, Lc/c/a/a/g/b/a;->A:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 2

    new-instance v0, Lc/c/a/a/c/l/b$d;

    invoke-direct {v0, p0}, Lc/c/a/a/c/l/b$d;-><init>(Lc/c/a/a/c/l/b;)V

    const-string v1, "Connection progress callbacks cannot be null."

    .line 1
    invoke-static {v0, v1}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lc/c/a/a/c/l/b;->h:Lc/c/a/a/c/l/b$c;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lc/c/a/a/c/l/b;->x(ILandroid/os/IInterface;)V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lc/c/a/a/g/b/a;->x:Z

    return v0
.end method

.method public final k(Lc/c/a/a/g/b/d;)V
    .locals 5

    const-string v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lc/c/a/a/c/l/q;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Lc/c/a/a/g/b/a;->y:Lc/c/a/a/c/l/c;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/l/c;->a:Landroid/accounts/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "<<default account>>"

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Landroid/accounts/Account;

    const-string v2, "com.google"

    invoke-direct {v0, v1, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v2, 0x0

    .line 2
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lc/c/a/a/c/l/b;->b:Landroid/content/Context;

    .line 4
    invoke-static {v1}, Lc/c/a/a/a/a/a/a/a;->a(Landroid/content/Context;)Lc/c/a/a/a/a/a/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lc/c/a/a/a/a/a/a/a;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    :cond_1
    new-instance v1, Lc/c/a/a/c/l/r;

    iget-object v3, p0, Lc/c/a/a/g/b/a;->A:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v1, v0, v3, v2}, Lc/c/a/a/c/l/r;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    invoke-virtual {p0}, Lc/c/a/a/c/l/b;->s()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lc/c/a/a/g/b/f;

    new-instance v2, Lc/c/a/a/g/b/j;

    invoke-direct {v2, v1}, Lc/c/a/a/g/b/j;-><init>(Lc/c/a/a/c/l/r;)V

    invoke-interface {v0, v2, p1}, Lc/c/a/a/g/b/f;->m(Lc/c/a/a/g/b/j;Lc/c/a/a/g/b/d;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "SignInClientImpl"

    const-string v2, "Remote service probably died when signIn is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    new-instance v2, Lc/c/a/a/g/b/l;

    invoke-direct {v2}, Lc/c/a/a/g/b/l;-><init>()V

    check-cast p1, Lc/c/a/a/c/k/k/z;

    .line 5
    iget-object v3, p1, Lc/c/a/a/c/k/k/z;->b:Landroid/os/Handler;

    new-instance v4, Lc/c/a/a/c/k/k/b0;

    invoke-direct {v4, p1, v2}, Lc/c/a/a/c/k/k/b0;-><init>(Lc/c/a/a/c/k/k/z;Lc/c/a/a/g/b/l;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    return-void

    :catch_1
    const-string p1, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    .line 6
    invoke-static {v1, p1, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public o()I
    .locals 1

    const v0, 0xbdfcb8

    return v0
.end method

.method public synthetic p(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lc/c/a/a/g/b/f;

    if-eqz v1, :cond_1

    check-cast v0, Lc/c/a/a/g/b/f;

    return-object v0

    :cond_1
    new-instance v0, Lc/c/a/a/g/b/h;

    invoke-direct {v0, p1}, Lc/c/a/a/g/b/h;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public r()Landroid/os/Bundle;
    .locals 3

    iget-object v0, p0, Lc/c/a/a/g/b/a;->y:Lc/c/a/a/c/l/c;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/l/c;->e:Ljava/lang/String;

    .line 2
    iget-object v1, p0, Lc/c/a/a/c/l/b;->b:Landroid/content/Context;

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lc/c/a/a/g/b/a;->z:Landroid/os/Bundle;

    iget-object v1, p0, Lc/c/a/a/g/b/a;->y:Lc/c/a/a/c/l/c;

    .line 4
    iget-object v1, v1, Lc/c/a/a/c/l/c;->e:Ljava/lang/String;

    const-string v2, "com.google.android.gms.signin.internal.realClientPackageName"

    .line 5
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lc/c/a/a/g/b/a;->z:Landroid/os/Bundle;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method
