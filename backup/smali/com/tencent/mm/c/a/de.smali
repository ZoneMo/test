.class public final Lcom/tencent/mm/c/a/de;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bLP:Lcom/tencent/mm/storage/ak;

.field public bOi:I

.field public bOj:Ljava/lang/String;

.field public bOk:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/tencent/mm/c/a/de;->bOi:I

    .line 20
    iput-boolean v0, p0, Lcom/tencent/mm/c/a/de;->bOk:Z

    return-void
.end method
