.class public Lb/d/e$a;
.super Lb/i/g/a/b$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/d/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/d/e;


# direct methods
.method public constructor <init>(Lb/d/e;)V
    .locals 0

    iput-object p1, p0, Lb/d/e$a;->a:Lb/d/e;

    invoke-direct {p0}, Lb/i/g/a/b$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lb/d/e$a;->a:Lb/d/e;

    .line 1
    iget-object v0, v0, Lb/d/e;->W:Lb/d/e$b;

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Lb/d/e$b;->a(I)V

    invoke-static {}, La/a/a/a/a;->Q()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lb/d/e$a;->a:Lb/d/e;

    iget-object v0, v0, Lb/d/e;->X:Ljava/util/concurrent/Executor;

    new-instance v1, Lb/d/e$a$a;

    invoke-direct {v1, p0, p1, p2}, Lb/d/e$a$a;-><init>(Lb/d/e$a;ILjava/lang/CharSequence;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
