# Right Proper<br />📼 VCR 📼



## Testing is a feedback loop.

➰


Feedback loops are better when they are
- Relevant 👈
- Low-Latency ⏲️


Relevance: 👈
- ❌ Fail where the real system fails
- ✔️ Succeed where the real system succeeds
- 🤐 Low noise/false positives
- ⚠️ Important failures look important


Low-Latency: ⏲️
- 🏇 Instant feedback is the ideal
- 📜 Delays in each stage of the feedback loop degrade the relevance



## VCR provides some great trade-offs

- Records real API calls to other services.<br />(High Relevance 👈)
- Replays the recordings as a mock.<br />(Low Latency ⏲️)


To get the most benefit, you need to re-record the tapes frequently. 📼

```
erase_vcr:
    find spec/vcr ! -type d -delete

update_specs: erase_vcr specs
```

<p class="fragment">`make update_specs` fails miserably<br />for eve-cases-v30. 💥</p>


Every minute that goes by is latency that degrades the quality of the tapes, leaving us passing tests that give false confidence.

<p class="fragment">🖼️📹<br />It's kinda like a security camera showing you stale footage.</p>


This makes Dane sad.

<p class="fragment" style="font-size: 300%">😢</p>


Re-recording fails for two reasons:
1. ✍️ Some tapes have been manually edited, making them simple mocks.
2. 🛠️ Some tapes require cases be manually created and progressed prior to recording.



## One solution to both problems

🦉🦆 🥌


```Ruby
let(:example_case) {
  TestCase.new(i9: PAYLOAD_OVERRIDE,
               role: :agent,
               status: :CONFIRM_DETAILS)
}

let(:case_number) { example.case_number }
```

<p class="fragment">Let's create a helper class that authenticates 🔑🔓, creates cases 🏭, and moves them 🚚 through the process so that we can easily specify what we need for a test to pass.</p>
