.class public Lb/l/a/k$c;
.super Lb/l/a/h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/l/a/k;->V()Lb/l/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb/l/a/k;


# direct methods
.method public constructor <init>(Lb/l/a/k;)V
    .locals 0

    iput-object p1, p0, Lb/l/a/k$c;->b:Lb/l/a/k;

    invoke-direct {p0}, Lb/l/a/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    iget-object p1, p0, Lb/l/a/k$c;->b:Lb/l/a/k;

    iget-object p1, p1, Lb/l/a/k;->q:Lb/l/a/i;

    .line 1
    iget-object v0, p1, Lb/l/a/i;->c:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {v0, p2, v1}, Landroidx/fragment/app/Fragment;->v(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1

    :cond_0
    throw v1
.end method
