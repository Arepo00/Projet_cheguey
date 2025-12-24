.class public Lb/t/o$b;
.super Lb/t/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/t/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Lb/t/o;


# direct methods
.method public constructor <init>(Lb/t/o;)V
    .locals 0

    invoke-direct {p0}, Lb/t/l;-><init>()V

    iput-object p1, p0, Lb/t/o$b;->a:Lb/t/o;

    return-void
.end method


# virtual methods
.method public a(Lb/t/i;)V
    .locals 1

    iget-object p1, p0, Lb/t/o$b;->a:Lb/t/o;

    iget-boolean v0, p1, Lb/t/o;->M:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lb/t/i;->G()V

    iget-object p1, p0, Lb/t/o$b;->a:Lb/t/o;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lb/t/o;->M:Z

    :cond_0
    return-void
.end method

.method public c(Lb/t/i;)V
    .locals 2

    iget-object v0, p0, Lb/t/o$b;->a:Lb/t/o;

    iget v1, v0, Lb/t/o;->L:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lb/t/o;->L:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lb/t/o;->M:Z

    invoke-virtual {v0}, Lb/t/i;->n()V

    :cond_0
    invoke-virtual {p1, p0}, Lb/t/i;->w(Lb/t/i$d;)Lb/t/i;

    return-void
.end method
