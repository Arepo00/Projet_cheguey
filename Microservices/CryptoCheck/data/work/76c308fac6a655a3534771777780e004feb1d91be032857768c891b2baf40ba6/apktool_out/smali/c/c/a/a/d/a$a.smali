.class public Lc/c/a/a/d/a$a;
.super Lc/c/a/a/f/b/b;
.source ""

# interfaces
.implements Lc/c/a/a/d/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.dynamic.IObjectWrapper"

    invoke-direct {p0, v0}, Lc/c/a/a/f/b/b;-><init>(Ljava/lang/String;)V

    return-void
.end method
