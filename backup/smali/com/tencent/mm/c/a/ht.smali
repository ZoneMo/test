.class public final Lcom/tencent/mm/c/a/ht;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bRo:Lcom/tencent/mm/c/a/hu;

.field public bRp:Lcom/tencent/mm/c/a/hv;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ht;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ht;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 16
    new-instance v0, Lcom/tencent/mm/c/a/hu;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/hu;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ht;->bRo:Lcom/tencent/mm/c/a/hu;

    .line 21
    new-instance v0, Lcom/tencent/mm/c/a/hv;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/hv;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ht;->bRp:Lcom/tencent/mm/c/a/hv;

    .line 11
    const-string v0, "UpdateWeChat"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ht;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ht;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ht;->gbY:Z

    return-void
.end method
