.class public abstract Lb/l/a/i;
.super Lb/l/a/f;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb/l/a/f;"
    }
.end annotation


# instance fields
.field public final b:Landroid/app/Activity;

.field public final c:Landroid/content/Context;

.field public final d:Landroid/os/Handler;

.field public final e:I

.field public final f:Lb/l/a/k;


# direct methods
.method public constructor <init>(Lb/l/a/e;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 1
    invoke-direct {p0}, Lb/l/a/f;-><init>()V

    new-instance v1, Lb/l/a/k;

    invoke-direct {v1}, Lb/l/a/k;-><init>()V

    iput-object v1, p0, Lb/l/a/i;->f:Lb/l/a/k;

    iput-object p1, p0, Lb/l/a/i;->b:Landroid/app/Activity;

    const-string v1, "context == null"

    invoke-static {p1, v1}, La/a/a/a/a;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lb/l/a/i;->c:Landroid/content/Context;

    const-string p1, "handler == null"

    invoke-static {v0, p1}, La/a/a/a/a;->h(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lb/l/a/i;->d:Landroid/os/Handler;

    const/4 p1, 0x0

    iput p1, p0, Lb/l/a/i;->e:I

    return-void
.end method
