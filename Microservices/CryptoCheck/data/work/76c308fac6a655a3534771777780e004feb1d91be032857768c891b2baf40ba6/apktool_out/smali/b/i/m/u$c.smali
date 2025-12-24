.class public Lb/i/m/u$c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/i/m/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public final a:Lb/i/m/u;


# direct methods
.method public constructor <init>()V
    .locals 2

    new-instance v0, Lb/i/m/u;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/i/m/u;-><init>(Lb/i/m/u;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/i/m/u$c;->a:Lb/i/m/u;

    return-void
.end method


# virtual methods
.method public abstract a()Lb/i/m/u;
.end method

.method public b(Lb/i/f/b;)V
    .locals 0

    return-void
.end method

.method public abstract c(Lb/i/f/b;)V
.end method
