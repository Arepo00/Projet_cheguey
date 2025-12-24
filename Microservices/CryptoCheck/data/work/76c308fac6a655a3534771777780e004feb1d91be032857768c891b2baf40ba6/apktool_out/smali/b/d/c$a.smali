.class public Lb/d/c$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/d/c;


# direct methods
.method public constructor <init>(Lb/d/c;)V
    .locals 0

    iput-object p1, p0, Lb/d/c$a;->b:Lb/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lb/d/c$a;->b:Lb/d/c;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->g()Lb/l/a/e;

    move-result-object p2

    iget-object v0, p0, Lb/d/c$a;->b:Lb/d/c;

    .line 1
    iget-object v0, v0, Lb/d/c;->i0:Landroid/os/Bundle;

    .line 2
    new-instance v1, Lb/d/c$a$a;

    invoke-direct {v1, p0, p1}, Lb/d/c$a$a;-><init>(Lb/d/c$a;Landroid/content/DialogInterface;)V

    const-string p1, "FingerprintDialogFrag"

    invoke-static {p1, p2, v0, v1}, La/a/a/a/a;->T(Ljava/lang/String;Lb/l/a/e;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
