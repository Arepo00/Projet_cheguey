.class public Lc/c/a/a/c/j;
.super Lb/l/a/c;
.source ""


# instance fields
.field public h0:Landroid/app/Dialog;

.field public i0:Landroid/content/DialogInterface$OnCancelListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/l/a/c;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lc/c/a/a/c/j;->h0:Landroid/app/Dialog;

    iput-object v0, p0, Lc/c/a/a/c/j;->i0:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method


# virtual methods
.method public a0(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    iget-object p1, p0, Lc/c/a/a/c/j;->h0:Landroid/app/Dialog;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    iput-boolean p1, p0, Lb/l/a/c;->b0:Z

    .line 2
    :cond_0
    iget-object p1, p0, Lc/c/a/a/c/j;->h0:Landroid/app/Dialog;

    return-object p1
.end method

.method public b0(Lb/l/a/j;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lb/l/a/c;->b0(Lb/l/a/j;Ljava/lang/String;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lc/c/a/a/c/j;->i0:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
