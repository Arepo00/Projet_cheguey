.class public final Lc/c/a/a/c/l/b$k;
.super Lc/c/a/a/c/l/b$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/c/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/c/l/b$f;"
    }
.end annotation


# instance fields
.field public final g:Landroid/os/IBinder;

.field public final synthetic h:Lc/c/a/a/c/l/b;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/l/b;ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lc/c/a/a/c/l/b$k;->h:Lc/c/a/a/c/l/b;

    invoke-direct {p0, p1, p2, p4}, Lc/c/a/a/c/l/b$f;-><init>(Lc/c/a/a/c/l/b;ILandroid/os/Bundle;)V

    iput-object p3, p0, Lc/c/a/a/c/l/b$k;->g:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final c(Lc/c/a/a/c/a;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/l/b$k;->h:Lc/c/a/a/c/l/b;

    .line 1
    iget-object v0, v0, Lc/c/a/a/c/l/b;->n:Lc/c/a/a/c/l/b$b;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lc/c/a/a/c/l/x;

    .line 3
    iget-object v0, v0, Lc/c/a/a/c/l/x;->a:Lc/c/a/a/c/k/k/h;

    invoke-interface {v0, p1}, Lc/c/a/a/c/k/k/h;->t(Lc/c/a/a/c/a;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lc/c/a/a/c/l/b$k;->h:Lc/c/a/a/c/l/b;

    if-eqz p1, :cond_1

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1
.end method

.method public final d()Z
    .locals 6

    const-string v0, "GmsClient"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lc/c/a/a/c/l/b$k;->g:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v3, p0, Lc/c/a/a/c/l/b$k;->h:Lc/c/a/a/c/l/b;

    invoke-virtual {v3}, Lc/c/a/a/c/l/b;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lc/c/a/a/c/l/b$k;->h:Lc/c/a/a/c/l/b;

    invoke-virtual {v3}, Lc/c/a/a/c/l/b;->t()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "service descriptor mismatch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " vs. "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-object v0, p0, Lc/c/a/a/c/l/b$k;->h:Lc/c/a/a/c/l/b;

    iget-object v2, p0, Lc/c/a/a/c/l/b$k;->g:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lc/c/a/a/c/l/b;->p(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lc/c/a/a/c/l/b$k;->h:Lc/c/a/a/c/l/b;

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0}, Lc/c/a/a/c/l/b;->z(Lc/c/a/a/c/l/b;IILandroid/os/IInterface;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lc/c/a/a/c/l/b$k;->h:Lc/c/a/a/c/l/b;

    const/4 v3, 0x3

    invoke-static {v2, v3, v4, v0}, Lc/c/a/a/c/l/b;->z(Lc/c/a/a/c/l/b;IILandroid/os/IInterface;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lc/c/a/a/c/l/b$k;->h:Lc/c/a/a/c/l/b;

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lc/c/a/a/c/l/b;->q:Lc/c/a/a/c/a;

    .line 2
    iget-object v0, v0, Lc/c/a/a/c/l/b;->m:Lc/c/a/a/c/l/b$a;

    if-eqz v0, :cond_2

    .line 3
    check-cast v0, Lc/c/a/a/c/l/w;

    .line 4
    iget-object v0, v0, Lc/c/a/a/c/l/w;->a:Lc/c/a/a/c/k/k/c;

    invoke-interface {v0, v1}, Lc/c/a/a/c/k/k/c;->y(Landroid/os/Bundle;)V

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    return v1

    :catch_0
    const-string v2, "service probably died"

    .line 5
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
