.class public Lb/d/c$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/d/c;->a0(Landroid/os/Bundle;)Landroid/app/Dialog;
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

    iput-object p1, p0, Lb/d/c$b;->b:Lb/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lb/d/c$b;->b:Lb/d/c;

    .line 1
    iget-object v0, v0, Lb/d/c;->i0:Landroid/os/Bundle;

    const-string v1, "allow_device_credential"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/d/c$b;->b:Lb/d/c;

    .line 3
    iget-object v0, v0, Lb/d/c;->r0:Landroid/content/DialogInterface$OnClickListener;

    .line 4
    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lb/d/c$b;->b:Lb/d/c;

    iget-object v0, v0, Lb/d/c;->q0:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "FingerprintDialogFrag"

    const-string p2, "No suitable negative button listener."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
