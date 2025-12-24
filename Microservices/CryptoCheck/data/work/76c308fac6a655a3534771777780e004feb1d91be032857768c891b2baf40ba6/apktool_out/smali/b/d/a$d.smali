.class public Lb/d/a$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/d/a;


# direct methods
.method public constructor <init>(Lb/d/a;)V
    .locals 0

    iput-object p1, p0, Lb/d/a$d;->b:Lb/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 p1, -0x2

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lb/d/a$d;->b:Lb/d/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->g()Lb/l/a/e;

    move-result-object p1

    iget-object p2, p0, Lb/d/a$d;->b:Lb/d/a;

    .line 1
    iget-object p2, p2, Lb/d/a;->X:Landroid/os/Bundle;

    const/4 v0, 0x0

    const-string v1, "BiometricFragment"

    .line 2
    invoke-static {v1, p1, p2, v0}, La/a/a/a/a;->T(Ljava/lang/String;Lb/l/a/e;Landroid/os/Bundle;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
