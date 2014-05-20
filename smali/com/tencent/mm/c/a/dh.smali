.class public final Lcom/tencent/mm/c/a/dh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bOo:I

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/tencent/mm/c/a/dh;->status:I

    .line 22
    iput v0, p0, Lcom/tencent/mm/c/a/dh;->bOo:I

    return-void
.end method
