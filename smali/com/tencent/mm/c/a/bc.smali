.class public final Lcom/tencent/mm/c/a/bc;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bNe:Lcom/tencent/mm/c/a/bd;

.field public bNf:Lcom/tencent/mm/c/a/be;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/bc;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/bc;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/bd;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/bd;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bc;->bNe:Lcom/tencent/mm/c/a/bd;

    .line 17
    new-instance v0, Lcom/tencent/mm/c/a/be;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/be;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/bc;->bNf:Lcom/tencent/mm/c/a/be;

    .line 8
    const-string v0, "ExtVoiceFileNameToMsgId"

    iput-object v0, p0, Lcom/tencent/mm/c/a/bc;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/bc;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/bc;->gbY:Z

    return-void
.end method
