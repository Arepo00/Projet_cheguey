.class public Lb/g/b/d$b;
.super Lb/g/b/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/g/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lb/g/b/d;Lb/g/b/c;)V
    .locals 0

    invoke-direct {p0}, Lb/g/b/b;-><init>()V

    new-instance p1, Lb/g/b/h;

    invoke-direct {p1, p0, p2}, Lb/g/b/h;-><init>(Lb/g/b/b;Lb/g/b/c;)V

    iput-object p1, p0, Lb/g/b/b;->e:Lb/g/b/b$a;

    return-void
.end method
