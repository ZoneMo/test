.class public final Lcom/tencent/mm/c/a/aq;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bMP:Lcom/tencent/mm/c/a/ar;

.field public bMQ:Lcom/tencent/mm/c/a/as;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/aq;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/aq;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/ar;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/ar;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/aq;->bMP:Lcom/tencent/mm/c/a/ar;

    .line 20
    new-instance v0, Lcom/tencent/mm/c/a/as;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/as;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/aq;->bMQ:Lcom/tencent/mm/c/a/as;

    .line 8
    const-string v0, "ExtNetSceneSendMsg"

    iput-object v0, p0, Lcom/tencent/mm/c/a/aq;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/aq;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/aq;->gbY:Z

    return-void
.end method
