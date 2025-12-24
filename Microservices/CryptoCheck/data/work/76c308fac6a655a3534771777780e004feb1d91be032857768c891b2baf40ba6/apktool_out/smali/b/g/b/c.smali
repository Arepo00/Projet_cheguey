.class public Lb/g/b/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Lb/g/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/g/b/e<",
            "Lb/g/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lb/g/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/g/b/e<",
            "Lb/g/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lb/g/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lb/g/b/e<",
            "Lb/g/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Lb/g/b/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb/g/b/e;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lb/g/b/e;-><init>(I)V

    iput-object v0, p0, Lb/g/b/c;->a:Lb/g/b/e;

    new-instance v0, Lb/g/b/e;

    invoke-direct {v0, v1}, Lb/g/b/e;-><init>(I)V

    iput-object v0, p0, Lb/g/b/c;->b:Lb/g/b/e;

    new-instance v0, Lb/g/b/e;

    invoke-direct {v0, v1}, Lb/g/b/e;-><init>(I)V

    iput-object v0, p0, Lb/g/b/c;->c:Lb/g/b/e;

    const/16 v0, 0x20

    new-array v0, v0, [Lb/g/b/g;

    iput-object v0, p0, Lb/g/b/c;->d:[Lb/g/b/g;

    return-void
.end method
