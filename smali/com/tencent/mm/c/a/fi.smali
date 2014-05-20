.class public final Lcom/tencent/mm/c/a/fi;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public appId:Ljava/lang/String;

.field public bLN:I

.field public bPV:J

.field public bPW:J

.field public bPX:Ljava/lang/String;

.field public bPY:Ljava/lang/String;

.field public bPZ:Ljava/lang/String;

.field public bQa:Z

.field public bQb:Z

.field public bQc:I

.field public bQd:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/fi;->bQa:Z

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/c/a/fi;->bQb:Z

    return-void
.end method
