.class public final Lcom/tencent/mm/c/a/ho;
.super Lcom/tencent/mm/sdk/b/e;
.source "SourceFile"


# static fields
.field public static bLE:Z

.field public static bLF:Z


# instance fields
.field public bRi:Lcom/tencent/mm/c/a/hp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lcom/tencent/mm/c/a/ho;->bLE:Z

    .line 7
    sput-boolean v0, Lcom/tencent/mm/c/a/ho;->bLF:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/mm/sdk/b/e;-><init>()V

    .line 13
    new-instance v0, Lcom/tencent/mm/c/a/hp;

    invoke-direct {v0}, Lcom/tencent/mm/c/a/hp;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/c/a/ho;->bRi:Lcom/tencent/mm/c/a/hp;

    .line 8
    const-string v0, "UpdateLocalVerifySwitch"

    iput-object v0, p0, Lcom/tencent/mm/c/a/ho;->id:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/mm/c/a/ho;->bLF:Z

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/ho;->gbY:Z

    return-void
.end method
