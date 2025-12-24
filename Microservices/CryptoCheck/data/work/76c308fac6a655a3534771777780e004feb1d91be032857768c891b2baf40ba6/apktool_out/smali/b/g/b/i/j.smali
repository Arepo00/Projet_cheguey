.class public Lb/g/b/i/j;
.super Lb/g/b/i/h;
.source ""


# instance fields
.field public h0:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lb/g/b/i/h;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/g/b/i/j;->h0:Z

    return-void
.end method


# virtual methods
.method public a(Lb/g/b/i/e;)V
    .locals 1

    const/4 p1, 0x0

    .line 1
    :goto_0
    iget v0, p0, Lb/g/b/i/h;->g0:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lb/g/b/i/h;->f0:[Lb/g/b/i/d;

    aget-object v0, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
