.class public Lb/t/o$a;
.super Lb/t/l;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/t/o;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb/t/i;


# direct methods
.method public constructor <init>(Lb/t/o;Lb/t/i;)V
    .locals 0

    iput-object p2, p0, Lb/t/o$a;->a:Lb/t/i;

    invoke-direct {p0}, Lb/t/l;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lb/t/i;)V
    .locals 1

    iget-object v0, p0, Lb/t/o$a;->a:Lb/t/i;

    invoke-virtual {v0}, Lb/t/i;->z()V

    invoke-virtual {p1, p0}, Lb/t/i;->w(Lb/t/i$d;)Lb/t/i;

    return-void
.end method
