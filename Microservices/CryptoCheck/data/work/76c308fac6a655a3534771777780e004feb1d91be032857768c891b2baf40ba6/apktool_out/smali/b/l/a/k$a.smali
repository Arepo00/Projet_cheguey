.class public Lb/l/a/k$a;
.super Lb/a/b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/l/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lb/l/a/k;


# direct methods
.method public constructor <init>(Lb/l/a/k;Z)V
    .locals 0

    iput-object p1, p0, Lb/l/a/k$a;->c:Lb/l/a/k;

    invoke-direct {p0, p2}, Lb/a/b;-><init>(Z)V

    return-void
.end method
