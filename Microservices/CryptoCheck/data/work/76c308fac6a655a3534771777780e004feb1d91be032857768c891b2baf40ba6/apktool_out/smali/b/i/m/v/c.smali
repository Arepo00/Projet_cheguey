.class public Lb/i/m/v/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/i/m/v/c$b;,
        Lb/i/m/v/c$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/i/m/v/c$b;

    invoke-direct {v0, p0}, Lb/i/m/v/c$b;-><init>(Lb/i/m/v/c;)V

    iput-object v0, p0, Lb/i/m/v/c;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/i/m/v/c;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Lb/i/m/v/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(I)Lb/i/m/v/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
