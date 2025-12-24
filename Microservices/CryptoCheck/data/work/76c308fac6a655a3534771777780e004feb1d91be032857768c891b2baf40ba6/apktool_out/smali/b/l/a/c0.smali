.class public Lb/l/a/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/n/g;


# instance fields
.field public b:Lb/n/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lb/l/a/c0;->b:Lb/n/h;

    return-void
.end method


# virtual methods
.method public a()Lb/n/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/l/a/c0;->b:Lb/n/h;

    if-nez v0, :cond_0

    new-instance v0, Lb/n/h;

    invoke-direct {v0, p0}, Lb/n/h;-><init>(Lb/n/g;)V

    iput-object v0, p0, Lb/l/a/c0;->b:Lb/n/h;

    .line 2
    :cond_0
    iget-object v0, p0, Lb/l/a/c0;->b:Lb/n/h;

    return-object v0
.end method
