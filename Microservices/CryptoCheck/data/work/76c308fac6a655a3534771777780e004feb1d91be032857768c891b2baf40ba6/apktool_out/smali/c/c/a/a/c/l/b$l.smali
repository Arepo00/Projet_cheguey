.class public final Lc/c/a/a/c/l/b$l;
.super Lc/c/a/a/c/l/b$f;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/c/l/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lc/c/a/a/c/l/b$f;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lc/c/a/a/c/l/b;


# direct methods
.method public constructor <init>(Lc/c/a/a/c/l/b;I)V
    .locals 1

    iput-object p1, p0, Lc/c/a/a/c/l/b$l;->g:Lc/c/a/a/c/l/b;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lc/c/a/a/c/l/b$f;-><init>(Lc/c/a/a/c/l/b;ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final c(Lc/c/a/a/c/a;)V
    .locals 2

    iget-object v0, p0, Lc/c/a/a/c/l/b$l;->g:Lc/c/a/a/c/l/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, v0, Lc/c/a/a/c/l/b;->h:Lc/c/a/a/c/l/b$c;

    invoke-interface {v0, p1}, Lc/c/a/a/c/l/b$c;->a(Lc/c/a/a/c/a;)V

    iget-object p1, p0, Lc/c/a/a/c/l/b$l;->g:Lc/c/a/a/c/l/b;

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    return-void

    .line 2
    :cond_0
    throw v1

    .line 3
    :cond_1
    throw v1
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Lc/c/a/a/c/l/b$l;->g:Lc/c/a/a/c/l/b;

    iget-object v0, v0, Lc/c/a/a/c/l/b;->h:Lc/c/a/a/c/l/b$c;

    sget-object v1, Lc/c/a/a/c/a;->f:Lc/c/a/a/c/a;

    invoke-interface {v0, v1}, Lc/c/a/a/c/l/b$c;->a(Lc/c/a/a/c/a;)V

    const/4 v0, 0x1

    return v0
.end method
